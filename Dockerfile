FROM alpine:3.15.4

ENV NGINX_VER="1.20.2-r1"

RUN apk update && apk add nginx=${NGINX_VER}

COPY index.html /usr/share/nginx/html/index.html
COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 80/tcp

CMD ["nginx", "-g", "daemon off;"]


