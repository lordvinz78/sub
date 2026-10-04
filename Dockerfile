FROM node:20-alpine
WORKDIR /app
COPY . .
RUN npm install -g wrangler@3.114.17 && npm install
EXPOSE 8787
CMD ["wrangler", "dev", "--ip", "0.0.0.0", "--port", "8787", "--local"]
