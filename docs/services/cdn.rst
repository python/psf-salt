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
    MIIFIDCCBAigAwIBAgIUSwF8IyrXCLw1yUOaCU7ImqfsVuswDQYJKoZIhvcNAQEL
    BQAwgawxCzAJBgNVBAYTAlVTMQswCQYDVQQIDAJOSDESMBAGA1UEBwwJV29sZmVi
    b3JvMSMwIQYDVQQKDBpQeXRob24gU29mdHdhcmUgRm91bmRhdGlvbjEcMBoGA1UE
    CwwTSW5mcmFzdHJ1Y3R1cmUgVGVhbTEPMA0GA1UEAwwGUFNGX0NBMSgwJgYJKoZI
    hvcNAQkBFhlpbmZyYXN0cnVjdHVyZUBweXRob24ub3JnMB4XDTE5MDIxMzE3Mzc0
    OFoXDTI0MDIxMjE3Mzc0OFowgawxCzAJBgNVBAYTAlVTMQswCQYDVQQIDAJOSDES
    MBAGA1UEBwwJV29sZmVib3JvMSMwIQYDVQQKDBpQeXRob24gU29mdHdhcmUgRm91
    bmRhdGlvbjEcMBoGA1UECwwTSW5mcmFzdHJ1Y3R1cmUgVGVhbTEPMA0GA1UEAwwG
    UFNGX0NBMSgwJgYJKoZIhvcNAQkBFhlpbmZyYXN0cnVjdHVyZUBweXRob24ub3Jn
    MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAlwGWoL9lCgBJ5556yv1l
    nGSCqP5fh04C9NV4UXrvQgzbN39xEpUU92OB25Wv6WEbvVTPLTBmEsRuRRiUNiT1
    Zygm95iBAu8MvflTmkCKd5fPqNJQ0IbDmbO/GQPF0KTSw+TlEbFBya3tVOljk68j
    CcMaTvg80gVPqEsH3Z9pNAQCakniFOOYR13hztuM+xnj7pNyNcG/hL34bXSBf7R7
    xdSOoe57Zh1HlFmK0ylygfZnjABcBAtWTaDdc9OV+vHEnivHQLMWIYIZkJ1GeIRx
    /KS5YWFv0AU6JdJ7rcIBz8gvRSCZ2c1+dMQDEcd0yj9SGyHoVgcBdgmCauqUQWdZ
    nwIDAQABo4IBNjCCATIwEgYDVR0TAQH/BAgwBgEB/wIBADAOBgNVHQ8BAf8EBAMC
    AQYwHQYDVR0OBBYEFCsBBVE1Z3p5Wvpkafy+yHOBLT2oMIHsBgNVHSMEgeQwgeGA
    FCsBBVE1Z3p5Wvpkafy+yHOBLT2ooYGypIGvMIGsMQswCQYDVQQGEwJVUzELMAkG
    A1UECAwCTkgxEjAQBgNVBAcMCVdvbGZlYm9ybzEjMCEGA1UECgwaUHl0aG9uIFNv
    ZnR3YXJlIEZvdW5kYXRpb24xHDAaBgNVBAsME0luZnJhc3RydWN0dXJlIFRlYW0x
    DzANBgNVBAMMBlBTRl9DQTEoMCYGCSqGSIb3DQEJARYZaW5mcmFzdHJ1Y3R1cmVA
    cHl0aG9uLm9yZ4IUSwF8IyrXCLw1yUOaCU7ImqfsVuswDQYJKoZIhvcNAQELBQAD
    ggEBAA0cO6oLGLD/04+Yus1f21y2INICyzab0Brb3+Nsx8J+vE3dzrxZIO6Xjv+m
    mwxTy99/r+OYbIreCUaU6sHm3bu8XRcFpaJRjBjFNwa2yNcRlmIyOzOzJc7XIqbu
    Ie0M+cl+UmkwQQuDwnWHw/pRXlkv1khy7810kw5WW5vFHzq/Y/Jgvrt4c0KDHLEa
    5DHWJiVV8afCBfAPXmqrX+wCb7ZpAYzpNsarSFpfbQgKj7lJqBhQ1IM1zKEJVPjH
    culLlL5v+m6YuAE2WtHK8xeFmZbnRgZUIi8eaGSz+I4mt6FwoXCrK4PqKZN0C9GJ
    cbvbbUEO8RniBebMRMstpYTQDq8=
    -----END CERTIFICATE-----

The iad1 hosted value of the PSF CA is::

    -----BEGIN CERTIFICATE-----
    MIIFIjCCBAqgAwIBAgIVAJRtfWNZoFYyqBv7Ol8/voe3sH/gMA0GCSqGSIb3DQEB
    CwUAMIGsMQswCQYDVQQGEwJVUzELMAkGA1UECBMCTkgxEjAQBgNVBAcTCVdvbGZl
    Ym9ybzEjMCEGA1UEChMaUHl0aG9uIFNvZnR3YXJlIEZvdW5kYXRpb24xHDAaBgNV
    BAsTE0luZnJhc3RydWN0dXJlIFRlYW0xDzANBgNVBAMUBlBTRl9DQTEoMCYGCSqG
    SIb3DQEJARYZaW5mcmFzdHJ1Y3R1cmVAcHl0aG9uLm9yZzAeFw0xNDEwMTkxOTUx
    MTlaFw0xOTEwMTgxOTUxMTlaMIGsMQswCQYDVQQGEwJVUzELMAkGA1UECBMCTkgx
    EjAQBgNVBAcTCVdvbGZlYm9ybzEjMCEGA1UEChMaUHl0aG9uIFNvZnR3YXJlIEZv
    dW5kYXRpb24xHDAaBgNVBAsTE0luZnJhc3RydWN0dXJlIFRlYW0xDzANBgNVBAMU
    BlBTRl9DQTEoMCYGCSqGSIb3DQEJARYZaW5mcmFzdHJ1Y3R1cmVAcHl0aG9uLm9y
    ZzCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBALPFdrBHn1e3j4HiWKLr
    VKOD07y1Vv+qhJbIEhcGS71aqjBvrdV5enKTdTMp+/66l/hZs272/w8ozNMy7fTk
    zmQ9CTw+JALYuRkuY2IKDx1TYviu/r9ssLwUdCknIMD5iSlrcBzW1XXB/FnoN0Qd
    lrxjYLUbG5b+xVULG+gCg26yMk5iJoAqwRAK3iiBdRzZBP+lOspS2bC6H9srsmJb
    26bOpofOBZa3Mt+xDtspA6w2QOMMPPPxbUV4VvSdazpNjAkYEsR0FKivWTHUDe9m
    wATEXxDX4XZoNM0L2vc7DkCS0MgyJy3gHT5sVj2+hWUEYH67WSu3TvotWMMzckrC
    c68CAwEAAaOCATcwggEzMBIGA1UdEwEB/wQIMAYBAf8CAQAwDgYDVR0PAQH/BAQD
    AgEGMB0GA1UdDgQWBBRvXo8qm3WXAuvKe5Ig5AuE28obNjCB7QYDVR0jBIHlMIHi
    gBRvXo8qm3WXAuvKe5Ig5AuE28obNqGBsqSBrzCBrDELMAkGA1UEBhMCVVMxCzAJ
    BgNVBAgTAk5IMRIwEAYDVQQHEwlXb2xmZWJvcm8xIzAhBgNVBAoTGlB5dGhvbiBT
    b2Z0d2FyZSBGb3VuZGF0aW9uMRwwGgYDVQQLExNJbmZyYXN0cnVjdHVyZSBUZWFt
    MQ8wDQYDVQQDFAZQU0ZfQ0ExKDAmBgkqhkiG9w0BCQEWGWluZnJhc3RydWN0dXJl
    QHB5dGhvbi5vcmeCFQCUbX1jWaBWMqgb+zpfP76Ht7B/4DANBgkqhkiG9w0BAQsF
    AAOCAQEAR57NNg5fvj+tSrgdu6CmXvP65E1buECC7dRedRnJ2yDenI8o1jiFmMBD
    jG/+x0whosZREsQIdRIm0f+1cmiN7voYs3tJB8j2EKH9i3+usifQJiOxN0jv2i0E
    7ty2LLKwVhvYZQ8VxHGFdGnwUwGqKFtg+0C0ybrSmklGPY7uTxCio2sx28x4tIuU
    HhNzp4DeCelgj+1OodrBW0GcZm1O9fnCew3nsuiN+E94/ptaN5F0FkLuEYC8qqq9
    AqD60RC7HEJDWY+I33sSG0qcCNmkbyHkUUFxgD4+OrM7YA9/X9mixvRaUeS78EtS
    YdKdKzNYasuc6cNDSo2I7HccjGE3ig==
    -----END CERTIFICATE-----
