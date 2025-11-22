FROM nginx:latest
RUN rm -rf /usr/share/nginx/html/*
COPY . /usr/share/share/html/
EXPOSE 80
CMD ["nginx","-g","daemon off;"]
