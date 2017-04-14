.PHONY: all stable unstable clean

BUILD_DIR=".build"

all: stable unstable

stable:
	docker build -t gou:stable .

unstable:
	cd unstable && $(MAKE) unstable

clean:
	rm -rf ${BUILD_DIR}
