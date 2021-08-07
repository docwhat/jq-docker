[![Build & Publish](https://github.com/docwhat/jq-docker/actions/workflows/push.yaml/badge.svg)](https://github.com/docwhat/jq-docker/actions/workflows/push.yaml)

> `jq` in a docker image for easy use.

```sh
docker run -i quay.io/docwhat/jq <test.json '.a+.b'
```

# jq docker image

The latest release of `jq` from [stedolan/jq](https://github.com/stedolan/jq#readme).  The latest `jq` documentation is available at [stedolan.github.io/jq](https://stedolan.github.io/jq).

The `docwhat/jq` docker image is regularly built using the latest from the [official releases](https://github.com/stedolan/jq/releases).

I created this to make it easy to run the tool in docker driven CI systems.

## Usage

The image is available from several repositories:

```sh
# Quay
docker pull quay.io/docwhat/jq
# Github Container Registry
docker pull ghcr.io/docwhat/jq-docker/jq
# Docker Hub
docker pull docker.io/docwhat/jq
```

To use it on the command-line you can create an alias:

```sh
# Note: jq will not be able to access files since nothing is mounted.
alias jq='docker run --rm -i quay.io/docwhat/jq'
```
