FROM ubuntu:22.04
RUN apt-get update
RUN apt-get install -y git curl nginx zip
RUN echo "daemon off;">>/etc/nginx/nginx.conf
RUN cd /var/www/html && git clone https://github.com/Yash-Repalle/2048_Game.git && mv 2048_Game/* . && rm -rf 2048_Game
EXPOSE 80
CMD ["/usr/sbin/nginx", "-c", "/etc/nginx/nginx.conf"]