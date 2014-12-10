{% macro simple_service(service) %}
{{ "{{" }} with service "{{ service }}@{{ pillar.dc }}" }}
{{
   caller(
         service_addr="{{(index . 0).Address}}",
         service_port="{{(index . 0).Port}}",
   )
}}
{{ "{{ end }}" }}
{% endmacro %}
