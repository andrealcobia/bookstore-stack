# Stage 1: Build the Angular application
FROM node:16 AS build

WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build --omit=dev

# Stage 2: Serve the Angular app with Nginx
FROM nginx:alpine

# Copy the built files from the Angular build stage
COPY --from=build /app/dist/bookstore-angular /usr/share/nginx/html

# Copy Nginx global configuration
COPY nginx.conf /etc/nginx/nginx.conf

# Copy the site-specific Nginx configuration
COPY sites.conf /etc/nginx/templates/sites.conf.template

EXPOSE 8081

CMD ["nginx", "-g", "daemon off;"]
