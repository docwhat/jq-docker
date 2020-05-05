FROM alpine:3 AS fetcher
RUN apk update && apk add curl ca-certificates
RUN curl -sSfL -o /jq 'https://github.com/stedolan/jq/releases/download/jq-1.6/jq-linux64'
RUN chmod +x /jq

FROM scratch
ENV PATH=/
COPY --from=fetcher /jq /jq
ENTRYPOINT [ "/jq" ]
