{% from "flask_webserver/map.jinja" import flask_webserver with context %}

install_prereqs:
  pkg.installed:
    - pkgs: {{ flask_webserver.packages }}
      refresh: True

# set_python3_as_default:
#   cmd.run:
#     - name: rm -f /usr/bin/python && ln -s /usr/bin/python3 /usr/bin/python

# set_pip3_as_default:
#   cmd.run:
#     - name: mv /usr/bin/pip /usr/bin/pip2 && ln -s /usr/bin/pip3 /usr/bin/pip
