{% macro simple_service(service) %}
{{ "{{" }} with service "{{ service }}@{{ pillar.dc }}" }} # noqa: 206
{{
   caller(
         addr="{{ (index . 0).Address }}",
         port="{{ (index . 0).Port }}",
   )
}}
{{ "{{ end }}" }}
{% endmacro %}
