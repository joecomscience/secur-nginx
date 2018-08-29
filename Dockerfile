FROM nginx:alpine

LABEL maintainers="joewalker <joeteerawit@gmail.com>"

# forward request and error logs to docker log collector
RUN ln -sf /dev/stdout /var/log/nginx/access.log && \
    ln -sf /dev/stderr /var/log/nginx/error.log

COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 8080 8443