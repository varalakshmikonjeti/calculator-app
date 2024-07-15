#use the official nginx image from the dockerhub
FROM nginx:latest

#remove the default nginx website
RUN rm -rf /usr/share/nginx/html/*

#copy the website files from the local directory to the container
COPY . /usr/share/nginx/html

#expose port 80
EXPOSE 80

#start nginx
CMD ["nginx", "-g", "daemon off;"]
