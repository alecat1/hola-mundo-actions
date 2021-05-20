
FROM ubuntu:latest AS my-app-build
WORKDIR /app
COPY . .
RUN npm ci && npm run build

FROM ubuntu:latest
COPY --from=my-app-build /app/dist/github-actions-project /usr/share/nginx/html
RUN npm ci && npm run build
EXPOSE 80s