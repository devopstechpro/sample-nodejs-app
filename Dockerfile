FROM node:18-slim

WORKDIR /app

COPY package*.json ./

RUN npm install --production

COPY . .

# Set environment variables
ENV REACT_APP_BACKEND_URL="test"
ENV REACT_APP_GOOGLE_CLIENT_ID="test"
ENV APP_ENV=production
ENV APP_VERSION=1.0.0
ENV CUSTOM_MESSAGE="Hello from Dockerfile"

# Cloud Run requires the port to be set to $PORT
EXPOSE 8080

CMD ["npm", "start"]
