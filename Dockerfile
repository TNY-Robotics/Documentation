FROM squidfunk/mkdocs-material AS build-stage
WORKDIR /app
COPY mkdocs.yml .
COPY requirements.txt .
COPY src src
RUN pip install -r requirements.txt
RUN mkdocs build

FROM nginx:stable-alpine
COPY --from=build-stage /app/site /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
