{% from "flask_webserver/map.jinja" import flask_webserver with context %}

{% for package in flask_webserver.saltstack_formula_dependencies %}
"Clone {{ package }}":
  git.latest:
    - name: "https://github.com/saltstack-formulas/{{ package }}-formula.git"
    - target: "/tmp/{{ package }}-formula"

"Copy {{ package }}-formula states":
  cmd.run:
    - name: rm -rf /srv/salt/{{ package }} && cp -r /tmp/{{ package }}-formula/{{ package }} /srv/salt/{{ package }}
{% endfor %}
