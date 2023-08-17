ARG TERRAFORM_VERSION
ARG TF_RUNNER_VERSION

FROM hashicorp/terraform:${TERRAFORM_VERSION} as source

FROM ghcr.io/weaveworks/tf-runner:${TF_RUNNER_VERSION}

USER root
COPY --from=source /bin/terraform /usr/local/bin/terraform
RUN chmod +x /usr/local/bin/terraform

USER runner:runner