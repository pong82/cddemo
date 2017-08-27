FROM nginx
COPY app1.conf /etc/nginx/conf.d
COPY dashboard.html /nginx/html
EXPOSE 80
