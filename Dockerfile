FROM nginx:1.23.1-alpine

COPY index.html /usr/share/nginx/html/index.html

COPY entrypoint.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

CMD ["nginx", "-g", "daemon off;"]
