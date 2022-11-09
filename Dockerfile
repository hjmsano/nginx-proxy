FROM nginx

ADD ./app.conf /etc/nginx/conf.d/app.conf
ADD ./keys/server.crt /etc/nginx/server.crt
ADD ./keys/server.key /etc/nginx/server.key

RUN mkdir /var/logs
RUN chmod 755 -R /var
RUN chmod 400 /etc/nginx/server.key

EXPOSE 443
CMD ["nginx", "-g", "daemon off;"]
