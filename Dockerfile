FROM alpine/git AS src
RUN git clone --depth 1 https://github.com/SjoenH/koka.no /src

FROM nginx:alpine
COPY --from=src /src/index.html /usr/share/nginx/html/index.html
COPY --from=src /src/style.css /usr/share/nginx/html/style.css
EXPOSE 80
