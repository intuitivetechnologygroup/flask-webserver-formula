{% from "flask_webserver/map.jinja" import flask_webserver with context %}

include:
  {% if grains['os_family'] == 'RedHat' %}
  - flask_webserver/rhel
  {% elif grains['os_family'] == 'Debian' %}
  - flask_webserver/debian
  {% endif %}
