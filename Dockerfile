# Use the official Nginx image as a parent image
FROM nginx:latest

# Copy the static content to the Nginx server
COPY ./html /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx when the container has provisioned
CMD ["nginx", "-g", "daemon off;"]