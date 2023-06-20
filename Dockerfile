FROM node:18.16.0-alpine3.18
RUN addgroup app && adduser -S -G app app
USER app
WORKDIR /app
COPY --chown=app:app . .
EXPOSE 3001
CMD node app.js