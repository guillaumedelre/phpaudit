#!/bin/bash

IMAGE_NAME="${DOCKER_LOGIN}/qatools"

TARGET_IMAGE_TAG_NAME="${IMAGE_NAME}:7.3"
docker build --no-cache --tag "${TARGET_IMAGE_TAG_NAME}" .

TARGET_IMAGE_TAG_LATEST="${IMAGE_NAME}:latest"
docker build --no-cache --tag "${TARGET_IMAGE_TAG_LATEST}" .
