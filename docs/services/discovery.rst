Discovery
=========

The Python Infrastructure uses Consul to implement service discovery. There is
an agent running in client mode on all servers in the iad1 datacenter. These
can be queried on the standard ports on localhost. Consul also has a web
interface running on localhost on all nodes.


Using the Web Interface
-----------------------

To use the Consul web interface simply ssh into any server with a SSH port
forward such as ``ssh salt-master.psf.io -L 8500:localhost:8500`` and then
navigate to `http://localhost:8500/ <http://localhost:8500/>`_ in your browser.


Using a Service
---------------

Generally the best way to handle pointing to a service is to utilize the
``consul-template`` utility which will automatically watch a service and update
a configuration file and reload/restart a process whenever it is updated. This
takes a template (which can be rendered by salt) and will detect which services
it needs based on that.

This is best demonstrated by an example, say haproxy:

.. code-block:: sls

    haproxy:
      service.running:
        - enable: True
        - reload: True
        - require:
          - service: haproxy-consul

    /etc/haproxy/haproxy.cfg.tmpl:
      file.managed:
        - source: salt://haproxy/config/haproxy.cfg.jinja
        - template: jinja

    haproxy-consul:
      file.managed:
        - name: /etc/init/haproxy-consul.conf
        - source: salt://consul/init/consul-template.conf.jinja
        - template: jinja
        - context:
            templates:
              - "/etc/haproxy/haproxy.cfg.tmpl:/etc/haproxy/haproxy.cfg:chmod 644 /etc/haproxy/haproxy.cfg && service haproxy reload"
        - require:
          - pkg: consul-pkgs

      service.running:
        - enable: True
        - restart: True
        - require:
          - pkg: consul-pkgs
        - watch:
          - file: haproxy-consul
          - file: /etc/consul-template.conf
          - file: /etc/haproxy/haproxy.cfg.tmpl


Essentially this sets up a ``haproxy`` proxy service which requires the
``haproxy-consul`` service. Then it renders a configuration template and
finally it creates a ``haproxy-consul`` instance which has an upstart config
and is set to running. The ``templates`` variable passed into the contents is
important. It is a list of template, destiniation, command tuples. This is in
the form of ``"/path/to/template:/path/to/destination:shell command to run"``.

The template file can contain blocks that look like:

.. code-block:: text

    {{range service "my-service@iad1"}}
    server {{.Name}} {{.Address}}:{{.Port}} check{{end}}


This will render a server line for every entry in the ``"my-service"`` service
in the iad1 datacenter and tt will use the name, address, and port of the
registered service. For a full list of everything you can do in this template
file take a look at the
`consul-template documentation <https://github.com/hashicorp/consul-template>`_.



Registering a Service
---------------------

Registering an internal service (e.g. one that is running on a server in the
iad1 datacenter) is quite easy. You simply need to pick a name, port, and any
tags that you wish to associate with the service. Then simply add the below
block to the state files:

.. code-block:: sls

    /etc/consul.d/service-my-service.json:
      file.managed:
        - source: salt://consul/etc/service.jinja
        - template: jinja
        - context:
            name: my-service
            port: 9000
            tags:
              - tag1
              - tag2
        - user: root
        - group: root
        - mode: 644
        - require:
          - pkg: consul-pkgs


Where the ``name``, ``port``, and ``tags`` context variables control the values
that will be entered into the system. This will be available the next time that
salt runs the highstate command. It is likely you'll want this state to require
whatever states setup the service that you're exposing as any watchers will
start using it near instantly.


Registering an External Service
-------------------------------

Not all services are hosted internally, some services are external services
where we cannot install a consul client on their servers. The Consul service
system can handle this quite easily as well. To add an external service simply
edit ``pillar/dev/consul.sls`` or ``pillar/prod/consul.sls`` and add a new
entry in the ``external`` dictionary. The keys are ``datacenter``, ``node``,
``address``, ``service``, ``port``. Using an external service is exactly like
using an internal service.

Example:

.. code-block:: yaml

    consul:
      external:
        - datacenter: vagrant
          node: pythonanywhere
          address: www.pythonanywhere.com
          service: console
          port: 443
