say-hello:
	echo "Hello, World!"

test:
	poetry run pytest -s

lint:
	poetry run flake8

build:
	poetry build

package-install:
	python3 -m pip install --user dist/*.whl

run-check: lint test build package-install
	main-func
