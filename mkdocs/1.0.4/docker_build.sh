#!/bin/bash

IMAGE_NAME="${DOCKER_LOGIN}/mkdocs"

TARGET_IMAGE_TAG_NAME="${IMAGE_NAME}:1.0.4"
docker build --no-cache --tag "${TARGET_IMAGE_TAG_NAME}" .

TARGET_IMAGE_TAG_LATEST="${IMAGE_NAME}:latest"
docker build --no-cache --tag "${TARGET_IMAGE_TAG_LATEST}" .
