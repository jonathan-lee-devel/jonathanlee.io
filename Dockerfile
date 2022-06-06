FROM nginx:1.21.5-alpine

COPY nginx/default.conf /etc/nginx/conf.d/

COPY jonathanlee.io-static /usr/share/nginx/html

EXPOSE 80
EXPOSE 443
