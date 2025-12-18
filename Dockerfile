# Use official lightweight Nginx image
FROM nginx:1.25.3-alpine

# Remove default website content
RUN rm -rf /usr/share/nginx/html/*

# Copy static website files into container
COPY index.html /usr/share/nginx/html/
COPY styles.css /usr/share/nginx/html/
COPY script.js /usr/share/nginx/html/
COPY image.jpg /usr/share/nginx/html/
COPY siig.jpg /usr/share/nginx/html/
COPY download.png /usr/share/nginx/html/
COPY amandinkercv.pdf /usr/share/nginx/html/
COPY README.md /usr/share/nginx/html/

# Expose port 80 inside the container
EXPOSE 80

