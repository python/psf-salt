# PyPI File Hosting

Domain: files.pythonhosted.org

## Backends

### Google Cloud Storage

Hosts files uploaded to PyPI.

Only used for URLS matching: `^/packages/[a-f0-9]{2}/[a-f0-9]{2}/[a-f0-9]{60}/`

### Amazon S3 (deprecated)

Old bucket `pypi-files` for files uploaded to PyPI. No longer used except to check for URLS matching `^/packages/[a-f0-9]{2}/[a-f0-9]{2}/[a-f0-9]{60}/` if NOT found in GCS.

### conveyor.cmh1.psfhosted.org

Source: https://github.com/pypa/conveyor

Hosted on cabotage, this is used to redirect legacy URLS like `/packages/{python_version}/{project_l}/{project_name}/{filename}` to the location of an upload (if found). https://warehouse.pypa.io/api-reference/integration-guide.html#querying-pypi-for-package-urls

## Download analytics

As a result of a request for a download from URLS matching `^/packages/[a-f0-9]{2}/[a-f0-9]{2}/[a-f0-9]{60}/`, the Fastly service also writes a log line to the GCS bucket for Linehaul to ingest with the format:

```download|%{now}V|%{client.geo.country_code}V|%{req.url.path}V|%{tls.client.protocol}V|%{tls.client.cipher}V|%{resp.http.x-amz-meta-project}V|%{resp.http.x-amz-meta-version}V|%{resp.http.x-amz-meta-package-type}V|%{req.http.user-agent}V```




# PyPI Docs Hosting

Domain: pythonhosted.org

## Backends

### conveyor.cmh1.psfhosted.org

Source: https://github.com/pypa/conveyor

This proxies to Amazon S3 to retrieve and appropriately set MIME type on files requested from the `pypi-docs` S3 bucket.

Also redirects deprecated docs to a new location if configured in the root `redirects.txt` document of the `pypi-docs` bucket.

## Frontends

### Fastly

Fastly service sits in front of conveyor and caches the results (pretty vanilla).




# Linehaul

Runs in Google Cloud Functions, consumes logs uploaded to Google Cloud Storage from the PyPI File Hosting service and PyPI service, processes them, uploads the results back to another Google Cloud Storage bucket, and then another process ingests them in batches to Google Big Query once every 15 minutes.

The resulting data includes detailed (but anonymous) client information on downloads of files as well as requests to the Simple API.

## Google Cloud Functions

Source: https://github.com/pypa/linehaul-cloud-function

Two functions are exposed, one to ingest files and another to publish them to Big Query.

`linehaul-ingestor`: Triggered by successful uploads of files to `linehaul-logs`, downloads log files, processes them, uploads the results to `linehaul-bigquery-data`, and deletes the log file.

`linehaul-publisher`: Triggered by a scheduled message on the Google Pub/Sub Topic `linehaul-publisher-topic`, every 15 minutes collects up to 1000 files from the `linehaul-bigquery-data` Google Cloud Storage bucket and batch ingests them to Google Big Query dataset, and deletes the results files after success.

## Google BigQuery Public Dataset

Linehaul is responsible for publishing new data to the following BigQuery tables hosted in the BigQuery public dataset:

`bigquery-public-data.pypi.file_downloads`
`bigquery-public-data.pypi.simple_requests`

Another table, `bigquery-public-data.pypi.distribution_metadata` is kept up to date by Warehouse.

More details available at https://warehouse.pypa.io/api-reference/bigquery-datasets.html




# Camo

An image proxy, provides assured HTTPS for all images rendered from third party or external sites on PyPI. This also prevents some theoretical attacks on HTTP sessions/cookies due to loading from third party domains.

Using a [template filter](https://github.com/pypi/warehouse/blob/637435d22451494c83a5c404c409211b25df7c13/warehouse/filters.py#L69-L88), Warehouse camoifyies specific images as well as entire descriptions for individual projects.

**Note**: Potential project for Chloe, setup a Fastly service to cache images served via Camo.

## warehouse-camo.ingress.cmh1.psfhosted.org

Source: https://github.com/pypi/camo

Hosted on cabotage. Runs a fork of https://github.com/cactus/go-camo with modifications to work with cabotage. 
