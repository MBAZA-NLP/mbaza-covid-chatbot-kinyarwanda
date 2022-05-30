help:
	@echo "make"
	@echo "    install"
	@echo "        Install all requirements for running the bot."
	@echo "    clean"
	@echo "        Remove Python/build artifacts."
	@echo "    formatter"
	@echo "        Apply black formatting to code."
	@echo "    lint"
	@echo "        Lint code with flake8, and check if black formatter should be applied."
	@echo "    types"
	@echo "        Check for type errors using pytype."

install:
	python -m pip install --upgrade pip
	pip install -r requirements.txt
	python -m spacy download en_core_web_md
	pip install -e .

clean:
	find . -name '*.pyc' -exec rm -f {} +
	find . -name '*.pyo' -exec rm -f {} +
	find . -name '*~' -exec rm -f  {} +
	rm -rf build/
	rm -rf .pytype/
	rm -rf dist/
	rm -rf docs/_build

formatter:
	black actions

lint:
	flake8 actions
	black --check actions 

types:
	pytype --keep-going actions

test:
	pytest tests
