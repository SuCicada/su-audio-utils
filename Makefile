.PHONY: test
# Makefile


install:
	#python setup.py install --verbose
	pip install . --verbose

clean:
	rm -rf build su_audio_utils.egg-info dist

dist: clean
	python setup.py sdist
	#$(eval VERSION = $(shell cat version.txt))
	#tar -ztvf dist/sumake-$(VERSION).tar.gz

publish: clean dist
	#mv dist/sumake-$(VERSION).tar.gz dist/sumake-$(VERSION)-$(shell date +%s).tar.gz
	twine upload dist/* --verbose
