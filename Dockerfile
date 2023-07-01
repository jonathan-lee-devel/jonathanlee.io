FROM nginx:1.23.4-alpine

COPY nginx/default.conf /etc/nginx/conf.d/

COPY jonathanlee.io-static /usr/share/nginx/html

EXPOSE 80
