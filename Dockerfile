# Use official nginx image
FROM nginx:latest

# Remove the default nginx static website
RUN rm -rf /usr/share/nginx/html/*

# Copy your frontend files into nginx html folder
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80
