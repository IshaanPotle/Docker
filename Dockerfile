FROM nginx:1.10.1-alpine
COPY src/html /usr/share/nginx/html


#documentation to choose port 
#tcp or udp (with nginx default is tcp)
#EXPOSE 80

#CMD [ "nginx", "-g", "daemon off;" ]