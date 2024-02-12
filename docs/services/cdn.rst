CDN (Powered by Fastly)
=======================

The PSF has a CDN donated by Fastly which is available to any service hosted on
our infrastructure. This CDN is running a geo distributed varnish cluster
which respects various headers for handling caching. HTTPS is available from
fastly for any ``*.python.org`` domain including the EV Certificate.

The setup of our infrastructure means that the only configuration which needs
to change to move a service between fronted by the CDN or not is what address
the service CNAME points to. Everything else is identically configured.


Setup a Service with Fastly
===========================

Services served through Fastly are still hosted through the loadbalancers and
should be configured as normal there. Note that if you're using nginx you can
include the ``fastly_params`` file inside the server block to set up some
common settings for fastly backends (``include fastly_params;``). In order to
configure these services in Fastly you should do:

#. Create a new Service at Fastly.
#. Configure the backends in Fastly to match all of the loadbalancers
   (currently ``lb0.nyc1.psf.io`` and ``lb1.nyc1.psf.io``) on port ``20004``. These
   should also have TLS setup with the hostname ``lb.psf.io``, and the PSF_CA
   certificate (see below). The SSL Client Certificate and Key should be blank.
#. Configure a Header under the "Content" tab to set a ``Fastly-Token`` header
   set to the static value from ``pillar/prod/secrets/fastly.sls``.


PSF_CA
------

The nyc1 hosted value of the PSF CA is::

    -----BEGIN CERTIFICATE-----
    MIIEQzCCAyugAwIBAgIUYH38nEb2KLRgscKhjcNpBLRUz+UwDQYJKoZIhvcNAQEL
    BQAwgbAxCzAJBgNVBAYTAlVTMQ8wDQYDVQQIDAZPcmVnb24xEjAQBgNVBAcMCUJl
    YXZlcnRvbjEjMCEGA1UECgwaUHl0aG9uIFNvZnR3YXJlIEZvdW5kYXRpb24xHDAa
    BgNVBAsME0luZnJhc3RydWN0dXJlIFRlYW0xDzANBgNVBAMMBlBTRl9DQTEoMCYG
    CSqGSIb3DQEJARYZaW5mcmFzdHJ1Y3R1cmVAcHl0aG9uLm9yZzAeFw0yNDAyMTIx
    NzU0MDZaFw0yOTAyMTAxNzU0MDZaMIGwMQswCQYDVQQGEwJVUzEPMA0GA1UECAwG
    T3JlZ29uMRIwEAYDVQQHDAlCZWF2ZXJ0b24xIzAhBgNVBAoMGlB5dGhvbiBTb2Z0
    d2FyZSBGb3VuZGF0aW9uMRwwGgYDVQQLDBNJbmZyYXN0cnVjdHVyZSBUZWFtMQ8w
    DQYDVQQDDAZQU0ZfQ0ExKDAmBgkqhkiG9w0BCQEWGWluZnJhc3RydWN0dXJlQHB5
    dGhvbi5vcmcwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCXAZagv2UK
    AEnnnnrK/WWcZIKo/l+HTgL01XhReu9CDNs3f3ESlRT3Y4Hbla/pYRu9VM8tMGYS
    xG5FGJQ2JPVnKCb3mIEC7wy9+VOaQIp3l8+o0lDQhsOZs78ZA8XQpNLD5OURsUHJ
    re1U6WOTryMJwxpO+DzSBU+oSwfdn2k0BAJqSeIU45hHXeHO24z7GePuk3I1wb+E
    vfhtdIF/tHvF1I6h7ntmHUeUWYrTKXKB9meMAFwEC1ZNoN1z05X68cSeK8dAsxYh
    ghmQnUZ4hHH8pLlhYW/QBTol0nutwgHPyC9FIJnZzX50xAMRx3TKP1IbIehWBwF2
    CYJq6pRBZ1mfAgMBAAGjUzBRMB0GA1UdDgQWBBQrAQVRNWd6eVr6ZGn8vshzgS09
    qDAfBgNVHSMEGDAWgBQrAQVRNWd6eVr6ZGn8vshzgS09qDAPBgNVHRMBAf8EBTAD
    AQH/MA0GCSqGSIb3DQEBCwUAA4IBAQBmtyljZ1q2manMvIMEtXtc9lq3gwxIP4Pq
    ic5hKuEHDSy5iN0vZRhoqfgPzXMy61zCrvLmvxv8nN2B4Us44KQRzWwDvi8SavfQ
    LxRZ4KLe5Bg7MNfIKM/ZqYqHIt1FtVFYR7UyEILN/yDCyQC+8n6s8RLmT5OtZHPL
    0YAyHgdao4qCICkZShbCukq81ULvkq7i6QvHWZrVGAIc/1nN71QNEUMr9KtlTKO3
    TeSd+l13+CDGwMXUpglDiFL329TmG5pKr/zoTCGDmRvEfRPtICwY3FgqGDpmIwhw
    dXq0JPGHrFODeVrchUMSGqXhAZ+k/9YdJlGLbv3WJmD1GwFTs3Wf
    -----END CERTIFICATE-----
