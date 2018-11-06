FROM nginx
MAINTAINER kevinfaveridev@gmail.com

COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 80/tcp
