FROM nginx:stable-alpine

WORKDIR /usr/share/nginx/html
COPY ./src/*.html ./
COPY ./src ./src
COPY ./images ./images
COPY ./dist ./dist

EXPOSE 80

COPY ./nginx.conf /etc/nginx/conf.d/default.conf
