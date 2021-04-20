![](https://github.com/docwhat/jq-docker/workflows/Publish%20Docker/badge.svg)

> `jq` in a docker image for easy use.

```sh
docker run -i docwhat/jq <test.json '.a+.b'
```

# jq docker image

The latest release of `jq` from [stedolan/jq](https://github.com/stedolan/jq#readme).  The latest `jq` documentation is available at [stedolan.github.io/jq](https://stedolan.github.io/jq).

The `docwhat/jq` docker image is regularly built using the latest from the [official releases](https://github.com/stedolan/jq/releases).

I created this to make it easy to run the tool in docker driven CI systems.

## Usage

The image is available from Docker Hub:

```sh
docker pull docwhat/jq
```

To use it, you can alias a `docker run`:

```sh
alias jq='docker run --rm -i docwhat/jq'
```
