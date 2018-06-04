{% from "flask_webserver/map.jinja" import flask_webserver with context %}

install-pip-deps:
  pip.installed:
    - names: {{ flask_webserver.pip_dependencies }}
    - reload_modules: True
