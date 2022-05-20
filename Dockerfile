FROM public.ecr.aws/c2b4r4d4/publicrepo:php-7.4-apache
RUN apt -y update
RUN rm -rf /var/www/html/index.html
RUN service apache2 start
COPY index.php /var/www/html/
EXPOSE 80
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
