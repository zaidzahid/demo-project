# Use official nginx image
FROM nginx:stable-alpine

# Remove default nginx content
RUN rm -rf /usr/share/nginx/html/*

# Copy your single HTML file (rename your file to index.html or adjust)
# Make sure your HTML file is in the same folder as this Dockerfile
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80

# Start nginx (default command in nginx image will run nginx in foreground)
CMD ["nginx", "-g", "daemon off;"]
