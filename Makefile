.PHONY: venv install serve build clean

VENV := .venv
ACTIVATE := . $(VENV)/bin/activate

venv:
	python -m venv $(VENV)

install: venv
	$(ACTIVATE) && pip install -r requirements.txt

serve: install
	$(ACTIVATE) && mkdocs serve

build: install
	$(ACTIVATE) && mkdocs build

clean:
	rm -rf $(VENV) site
