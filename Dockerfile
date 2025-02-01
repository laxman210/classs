# Use the official Nginx image as the base image
FROM nginx:alpine

# Copy the custom Nginx configuration file
COPY nginx.conf /etc/nginx/nginx.conf

# Copy the build files to the Nginx HTML directory
COPY build /var/www/html

# Expose port 80
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
