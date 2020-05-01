![](https://github.com/docwhat/jq-docker/workflows/Publish%20Docker/badge.svg)


# JQ docker image

This is a simple project to build a docker image regularly, keeping it in sync with the official `jq` tool.

`jq` is the latest from the [official releases](https://github.com/stedolan/jq/releases).

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
