# Use Nginx on Alpine as base image
FROM nginx:alpine
COPY ./index.html /usr/share/nginx/html/index.html
