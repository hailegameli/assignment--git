#Pulling nginx base image
FROM nginx:latest

#Copy index.html to nginx web root indide the container
COPY index.html /usr/share/nginx/html/index.html

#Expose port to web traffic
EXPOSE 80

#Start nginx
ENTRYPOINT ["nginx", "-g", "daemon off;"]

