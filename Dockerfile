FROM nginx
COPY app1.conf /etc/nginx/conf.d
COPY dashboard.html /etc/nginx/html/dashboard.html
EXPOSE 80
