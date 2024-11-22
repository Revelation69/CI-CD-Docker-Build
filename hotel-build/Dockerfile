# Use Ubuntu as the base image
FROM ubuntu:latest

# Install dependencies
RUN apt update && \
    apt install -y apache2 && \
    apt install wget && \
    apt install unzip && \
    apt clean

# Set the working directory
WORKDIR /var/www/html

# Download webfiles
RUN wget https://github.com/Gauravias/hotel/archive/refs/heads/main.zip

# Unzip the downloaded file
RUN unzip main.zip

# Copy files into the html directory
RUN cp -r hotel-main/* /var/www/html/

# Remove unwanted files and directories
RUN rm -rf hotel-main main.zip

# Expose port 80
EXPOSE 80

# Set the default application to run when the container starts
ENTRYPOINT ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
