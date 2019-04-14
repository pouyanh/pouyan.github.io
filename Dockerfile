FROM nginx:alpine

MAINTAINER Pouyan Heyratpour <pouyan@janstun.com>

COPY dist /usr/share/nginx/html
COPY config/nginx.conf /etc/nginx/conf.d/default.conf
