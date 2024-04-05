# Stage 2 - Serve React Application using Nginx
FROM nginx:alpine

COPY /build /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
