# Flask Webserver

[![Build Status](https://travis-ci.org/intuitivetechnologygroup/flask-webserver-formula.svg?branch=master)](https://travis-ci.org/intuitivetechnologygroup/flask-webserver-formula)

Formulas to set up a webserver for flask applications.

**Note:**
See the full Salt Formulas installation and usage instructions
<http://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html>.

**Assumptions:**
`make` is on your system and available. If it is not or you are not sure what
`make` is, [this](https://www.gnu.org/software/make/) is a good place to start.

---

* [Testing](#testing)
* [Available States](#available-states)
* [Pillar Customizations](#pillar-customizations)

---

## <a name="testing"></a> Testing

The ***Makefile*** is located in the project base directory.

### Start a virtualenv

```bash
pip install -U virtualenv
virtualenv .venv
source .venv/bin/activate
```

* install requirements: `make test-setup`
* run a test:
  - `make test-centos_master_2017.7.2`
  - `make test-debian_master_2017.7.2`
  - `make test-ubuntu_master_2017.7.2`
  - `make test-ubuntu_master_2016.11.3`
* test results will return to your screen.


## <a name="available-states"></a> Available States

### `flask_webserver.dependencies`

Gathers salt formulas required to provision the webserver.

### `flask_webserver`


## <a name="pillar-customizations"></a> Pillar Customizations

Any of these values can be overwritten in a pillar file. If you do find yourself needing
more overrides follow the example below.

[pillar.example](flask_webserver/tests/pillar/flask_webserver/init.sls)
