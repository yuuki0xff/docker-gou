.PHONY: unstable clean

TAG="gou:unstable"
BUILDER_TAG="gou:unstable-builder"
CONTAINER="gou_unstable_builder"
BUILD_DIR="../.build/unstable"
BUILD_ROOT=".."

unstable: ${BUILD_DIR}/shingetsu-gou
	docker build -t ${TAG} -f ./Dockerfile ${BUILD_ROOT}

${BUILD_DIR}/shingetsu-gou:
	docker build -t ${BUILDER_TAG} -f ./builder.Dockerfile ${BUILD_ROOT}
	docker rm ${CONTAINER} || true
	docker run --name ${CONTAINER} ${BUILDER_TAG}
	mkdir -p ${BUILD_DIR}
	docker cp ${CONTAINER}:/go/bin/shingetsu-gou ${BUILD_DIR}/shingetsu-gou
	docker rm ${CONTAINER}
