FROM Httpd:2.4
COPY ./public-html/ /usr/local/apache2/htdocs/
RUN sudo yum update -y
RUN sudo docker build -t my-apache2 .
RUN sudo docker run -dit --name my-running-app -p 8000:80 my-apache2