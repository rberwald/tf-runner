#!/bin/sh

# Terraform version "n.m" automatically updates to latest "n.m.*"
TERRAFORM_VERSION="1.5"
TF_RUNNER_VERSION="v0.15.1"

docker build \
  --build-arg TERRAFORM_VERSION=${TERRAFORM_VERSION} \
  --build-arg TF_RUNNER_VERSION=${TF_RUNNER_VERSION} \
  --no-cache \
  --progress plain \
  --pull \
  --tag ghcr.io/rberwald/tf-runner:${TF_RUNNER_VERSION}-${TERRAFORM_VERSION} \
  .

docker push ghcr.io/rberwald/tf-runner:${TF_RUNNER_VERSION}-${TERRAFORM_VERSION}
