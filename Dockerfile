# Dockerfile for serving a static website using Nginx

# Step 1: Use the official Nginx image as the base image
FROM nginx:latest

# Step 2: Copy the static website files to the default Nginx directory
COPY ./index.html /usr/share/nginx/html/index.html

# Step 3: Expose port 80 to serve the website
EXPOSE 80

# Step 4: Start the Nginx server
CMD ["nginx", "-g", "daemon off;"]