# Use the official Nginx image as the base
FROM nginx:latest

# Remove default Nginx configuration
RUN rm -f /etc/nginx/conf.d/nginx.conf

# Copy your custom Nginx configuration
COPY nginx.conf /etc/nginx/conf.d

# Copy your static website files to Nginx's web directory
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
