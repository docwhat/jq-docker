FROM alpine AS fetcher
RUN apk update && apk add curl ca-certificates
RUN curl -sSfL -o /jq 'https://github.com/stedolan/jq/releases/latest/download/jq-linux64'
RUN chmod +x /jq

FROM scratch
ENV PATH=/
COPY --from=fetcher /jq /jq
ENTRYPOINT [ "/jq" ]
