FROM nginx
RUN rm -rf /etc/nginx/conf.d/default.conf
COPY ./default.conf /etc/nginx/sites-available
RUN ln -s /etc/nginx/sites-available/default.conf /etc/nginx/sites-enabled
COPY jonathanlee.io-static /usr/share/nginx/html
RUN touch /var/run/nginx.pid && \
    chwon -R 1001:1001 /var/run/nginx.pid && \
    chown -R 1001:1001 /var/cache/nginx && \
    chmod -R 777 /var/log/nginx /var/cache/nginx/ && \
    chmod -R 777 /etc/nginx/*

EXPOSE 8080
