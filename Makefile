.PHONY: clean

help:
	@echo "clean - remove backup files and Python stuff"
	@echo "test - run tests"

clean:
	find . -name '*.pyc' -exec rm -f {} +
	find . -name '*.pyo' -exec rm -f {} +
	find . -name '*~' -exec rm -f {} +
	find . -name '__pycache__' -exec rm -rf {} +

test:
	py.test -v
