FROM nginx:latest
RUN sed -i 's/nginx/jy/g' /usr/share/nginx/html/index.html
EXPOSE 80
