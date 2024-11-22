# Use the official Nginx image as the base image
FROM nginx:latest

# Copy the HTML file to the appropriate directory in the container
COPY index.html /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Command to start Nginx
CMD ["nginx", "-g", "daemon off;"]
