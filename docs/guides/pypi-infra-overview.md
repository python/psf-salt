# PyPI File Hosting

Domain: files.pythonhosted.org

## Backends

### Google Cloud Storage

Hosts files uploaded to PyPI.

Bucket: `pypi-files`
Link: https://console.cloud.google.com/storage/browser/pypi-files

Only used for URLS matching: `^/packages/[a-f0-9]{2}/[a-f0-9]{2}/[a-f0-9]{60}/`

### Amazon S3 (deprecated)

Old bucket `pypi-files` for files uploaded to PyPI. No longer used except to check for URLS matching `^/packages/[a-f0-9]{2}/[a-f0-9]{2}/[a-f0-9]{60}/` if NOT found in GCS.

Link: https://s3.console.aws.amazon.com/s3/buckets/pypi-files?region=us-west-2&tab=objects

### conveyor.cmh1.psfhosted.org

Source: https://github.com/pypa/conveyor

Hosted on cabotage, this is used to redirect legacy URLS like `/packages/{python_version}/{project_l}/{project_name}/{filename}` to the location of an upload (if found). https://warehouse.pypa.io/api-reference/integration-guide.html#querying-pypi-for-package-urls

Link: https://cabotage.cmh1.psfhosted.com/projects/pypa/pypi/applications/conveyor

## Download analytics

As a result of a request for a download from URLS matching `^/packages/[a-f0-9]{2}/[a-f0-9]{2}/[a-f0-9]{60}/`, the Fastly service also writes a log line to the GCS bucket `linehaul-logs` for Linehaul to ingest with the format:

Link: https://console.cloud.google.com/storage/browser/linehaul-logs

```download|%{now}V|%{client.geo.country_code}V|%{req.url.path}V|%{tls.client.protocol}V|%{tls.client.cipher}V|%{resp.http.x-amz-meta-project}V|%{resp.http.x-amz-meta-version}V|%{resp.http.x-amz-meta-package-type}V|%{req.http.user-agent}V```


---

# PyPI Docs Hosting

Domain: pythonhosted.org

## Backends

### conveyor.cmh1.psfhosted.org

Source: https://github.com/pypa/conveyor

This proxies to Amazon S3 to retrieve and appropriately set MIME type on files requested from the `pypi-docs` S3 bucket.

Also redirects deprecated docs to a new location if configured in the root `redirects.txt` document of the `pypi-docs` bucket.

Link:https://s3.console.aws.amazon.com/s3/buckets/pypi-docs?region=us-west-2&tab=objects

## Frontends

### Fastly

Fastly service sits in front of conveyor and caches the results (pretty vanilla).

Link: https://manage.fastly.com/configure/services/2M2szYhuuDVGuIS6NlWe5G

---

# Linehaul

Runs in Google Cloud Functions, consumes logs uploaded to Google Cloud Storage from the PyPI File Hosting service and PyPI service, processes them, uploads the results back to another Google Cloud Storage bucket, and then another process ingests them in batches to Google Big Query once every 15 minutes.

The resulting data includes detailed (but anonymous) client information on downloads of files as well as requests to the Simple API.

Link: https://console.cloud.google.com/functions/list?project=the-psf

## Google Cloud Functions

Source: https://github.com/pypa/linehaul-cloud-function

Two functions are exposed, one to ingest files and another to publish them to Big Query.

`linehaul-ingestor`: Triggered by successful uploads of files to `linehaul-logs`, downloads log files, processes them, uploads the results to `linehaul-bigquery-data`, and deletes the log file.

Link: https://console.cloud.google.com/functions/details/us-central1/linehaul-ingestor?env=gen1&project=the-psf

`linehaul-publisher`: Triggered by a scheduled message on the Google Pub/Sub Topic `linehaul-publisher-topic`, every 15 minutes collects up to 1000 files from the `linehaul-bigquery-data` Google Cloud Storage bucket and batch ingests them to Google Big Query dataset, and deletes the results files after success.

Link: https://console.cloud.google.com/functions/details/us-central1/linehaul-publisher?env=gen1&project=the-psf

## Google BigQuery Public Dataset

Link:https://console.cloud.google.com/bigquery?project=the-psf

Linehaul is responsible for publishing new data to the following BigQuery tables hosted in the BigQuery public dataset:

`bigquery-public-data.pypi.file_downloads`

Link: https://console.cloud.google.com/bigquery?project=the-psf&ws=!1m5!1m4!4m3!1sthe-psf!2spypi!3sfile_downloads

`bigquery-public-data.pypi.simple_requests`

Link:https://console.cloud.google.com/bigquery?project=the-psf&ws=!1m5!1m4!4m3!1sthe-psf!2spypi!3ssimple_requests

Another table, `bigquery-public-data.pypi.distribution_metadata` is kept up to date by Warehouse.

Link: https://console.cloud.google.com/bigquery?project=the-psf&ws=!1m5!1m4!4m3!1sthe-psf!2spypi!3sdistribution_metadata

More details available at https://warehouse.pypa.io/api-reference/bigquery-datasets.html

---

# Camo

An image proxy, provides assured HTTPS for all images rendered from third party or external sites on PyPI. This also prevents some theoretical attacks on HTTP sessions/cookies due to loading from third party domains.

Using a [template filter](https://github.com/pypi/warehouse/blob/637435d22451494c83a5c404c409211b25df7c13/warehouse/filters.py#L69-L88), Warehouse camoifyies specific images as well as entire descriptions for individual projects.

Link: https://cabotage.cmh1.psfhosted.com/projects/pypa/pypi/applications/camo

**Note**: Potential project for Chloe, setup a Fastly service to cache images served via Camo.

## warehouse-camo.ingress.cmh1.psfhosted.org

Source: https://github.com/pypi/camo

Hosted on cabotage. Runs a fork of https://github.com/cactus/go-camo with modifications to work with cabotage.

---

# Warehouse (pypi.org)

This service has three primary uses!

1) Web UI for PyPI, so this is the place on the internet that people go to interact "as a human" with PyPI! So that encompasses management of accounts, projects, releases, as well as browsing/searching packages. (This also includes an admin interface where PyPI moderators and admins can perform certain functions through a browser).

2) Uploads! Warehouse exposes an "upload" service that allows maintainers of projects to upload new files to PyPI, this also has the side effect of creating releases, and on the very first upload creating projects (if they don't exist but are allowed to). This is currently exposed at `upload.pypi.org` and is served directly from the backends, since uploads through Fastly (CDN) are prohibitively slow.

3) Serve APIs!

There are currently, Four (4) main APIs to consider.

- Simple API (https://warehouse.pypa.io/api-reference/legacy.html#simple-project-api)
  * This is the primary API that Python package tools interact with for installation. It has two implementations [HTML](https://peps.python.org/pep-0503/) and a newer [JSON](https://peps.python.org/pep-0691/).
  * Primarily it serves pages like `https://pypi.org/simple/{PROJECT_NAME}/` and returns a list of all files available for that project. Some metadata is baked into the response in both HTML and JSON cases.
  * Installers use the simple API responses to determine where to download selected files from. Namely `files.pythonhosted.org`
- JSON API (https://warehouse.pypa.io/api-reference/json.html)
  * This is an API growing in popularity!!!! Contains a superset of the data available from Simple API. Advantages before the JSON Simple are that this is easily machine readable without parsing HTML.
- XMLRPC 🔥 API (https://warehouse.pypa.io/api-reference/xml-rpc.html)
  * Extremely old API!
  * It's really only supported for one usecase which is Mirroring.
  * Biggest drawback for us, is that it's almost impossible to cache with Fastly.
- RSS feed API (https://warehouse.pypa.io/api-reference/feeds.html)
  * I dunno, some people love RSS 🥰

##Backends

### warehouse.cmh1.psfhosted.org

Source: https://github.com/pypi/warehouse

The service that runs in cabotage and is the code that serves requests for the Web UI, APIs, and uploads.

Also runs a suite of workers that do various asyncronous and scheduled tasks.

Link: https://cabotage.cmh1.psfhosted.com/projects/pypa/pypi/applications/warehouse

### Postgresql

We run postgres using Amazon Relational Database Service (RDS). This is the database for PyPI. All persistent data aside from the files themselves live in this DB!

RDS provides failover and redudancy for system issues as well was automated snapshots and backups of the DB so if disaster strikes... we can restore!

We also use the Perfomrance Insights to troubleshout database performace issues.

### Redis

Redis is a high performance in-memory Key-Value store that we use for caching! Basically any thing that we don't need to keep around forever but need on-demand and quick access too (HTTP Session keys, ratelimit counters, and our XMLRPC cache among other things?)

We run redis using another managed Amazon service, Elasticache. This also takes care of redudancy and failover for us!

### Queuing

Tasks for the workers are queued via Amazon Simple Queue Service (SQS) and processed with the [Celery](https://celeryproject.org).

### Elasticsearch

Dedicated search "appliance" software that allows us to index content on PyPI and make it searchable in a performant manner via the Web UI.

Also run by an Amazon managed service "Amazon OpenSearch Service" which is a closed-source implementation of "Elasticsearch". Provides reduncancy and failover.

## Frontends

### Fastly (for pypi.org)

We use Fastly as a CDN for PyPI and cache *as much as possible* for *as long as possible* and purge just the necessary pages when something changes. We do the most work in this Fastly to normalize requests and remove all kinds of reasons why a page might not be cachable!

About the only interesting bit is that our Fastly configuration has the ability to transparently failover to a static mirror for /simple and /json apis when the primary backend (warehouse.cmh1.psfhosted.org) is down. If and only if such a mirror exists and is online and available and up to date.

### None! (for upload.pypi.org)

We have an alias record for upload.pypi.org that points straight at the AWS Elastic Load Balancer in front of our Kubernetes/Ingress stack. This basically to make uploads as direct and pefrormant as possible, but has the drawback of high latency and low bandwidth the further someone is from AWS us-east-2 (Ohio). There's a proposal from Donald to improve the upload api published as [PEP 694](https://peps.python.org/pep-0694/).
