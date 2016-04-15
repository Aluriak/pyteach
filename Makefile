PYTHON=python3
PACKAGE=pyteach

all:
	$(PYTHON) -m $(PACKAGE)

t: test
test:
	$(PYTHON) -m unittest discover -v


test_register:
	$(PYTHON) setup.py register -r https://testpypi.python.org/pypi
test_install:
	$(PYTHON) setup.py sdist upload -r https://testpypi.python.org/pypi
	$(PYTHON) -m pip install -U -i https://testpypi.python.org/pypi $(PACKAGE)

register:
	$(PYTHON) setup.py register
upload:
	$(PYTHON) setup.py sdist upload
install:
	$(PYTHON) -m pip install -U $(PACKAGE)
