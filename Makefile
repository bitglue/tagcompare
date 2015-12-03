.PHONY: flake
flake:
	flake8

.PHONY: test
test: flake
	PYTHONPATH=. py.test -s -m "not integration" --cov-config .coveragerc --cov-report=term-missing --cov=tagcompare tagcompare/test/

.PHONY: test-all
test-all: flake
	PYTHONPATH=. py.test -s --cov-config .coveragerc --cov-report=term-missing --cov=tagcompare tagcompare/test/

# Do a funn run including gather image and compare them
.PHONY: run
run:
	cd tagcompare && python main.py

# Do a compare only run from previously gathered images
.PHONY: compare
compare:
	cd tagcompare && python compare.py

# Aggregates the output
.PHONY: output
output:
	cd tagcompare && python output.py

# Captures screenshots for tags
.PHONY: capture
capture:
	cd tagcompare && python capture.py
