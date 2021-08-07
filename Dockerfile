FROM alpine:20210804 AS fetcher
ENV JQ_TAG_AND_ASSET jq-1.6/jq-linux64
# hadolint ignore=DL3018
RUN apk add --no-cache curl ca-certificates
# hadolint ignore=DL3059
RUN curl -sSfL -o /jq "https://github.com/stedolan/jq/releases/download/${JQ_TAG_AND_ASSET}" && \
  chmod +x /jq

FROM scratch
ENV PATH=/
COPY --from=fetcher /jq /jq
ENTRYPOINT [ "/jq" ]
