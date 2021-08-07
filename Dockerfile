FROM alpine:20210212 AS fetcher

# hadolint ignore=DL3018
RUN apk add --no-cache curl ca-certificates
# hadolint ignore=DL3059
RUN curl -sSfL -o /jq 'https://github.com/stedolan/jq/releases/download/jq-1.6/jq-linux64' && \
  chmod +x /jq

FROM scratch
ENV PATH=/
COPY --from=fetcher /jq /jq
ENTRYPOINT [ "/jq" ]
