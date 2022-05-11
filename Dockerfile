FROM alpine:3.15.4

RUN apk update && apk add nginx

COPY index.html /usr/share/nginx/html/index.html
COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 80/tcp

CMD ["nginx", "-g", "daemon off;"]


