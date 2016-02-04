FROM tutum/lamp:latest
RUN rm -fr /app && git clone https://github.com/olearos/mylog /app
EXPOSE 80 3306 12345
CMD ["/run.sh"]
