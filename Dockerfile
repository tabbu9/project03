# Use Amazon Linux 2 as the base image 
FROM amazonlinux 

# Install Nginx and clean up unnecessary files 
RUN yum -y update && \ 
    yum -y install nginx && \ 
    yum clean all && \ 
    echo "<!DOCTYPE html><html><head><title>Welcome to HINTechnologies !!!</title></head><body></body></html>" > /usr/share/nginx/html/index.html 

# Expose port 80 for Nginx 
EXPOSE 80 

# Start Nginx in the foreground (daemon off) 
CMD ["nginx", "-g", "daemon off;"]
