FROM ubuntu:latest
COPY --from=my-app-build /app/dist/github-actions-project /usr/share/nginx/html
RUN npm ci && npm run build
EXPOSE 80s