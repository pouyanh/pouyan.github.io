FROM golang:latest as builder

ARG PROJECT_NAME=pouyanh.github.io
ARG PROJECT_NAMESPACE=github.com/pouyanh

WORKDIR $GOPATH/src/$PROJECT_NAMESPACE/$PROJECT_NAME
COPY . .
RUN $GOPATH/bin/hugo -d /roya

FROM nginx:alpine

MAINTAINER Pouyan Heyratpour <pouyan@janstun.com>

COPY --from=builder /roya /usr/share/nginx/html
#COPY --from=builder config/nginx.conf /etc/nginx/conf.d/default.conf
