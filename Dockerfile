FROM node:alpine

# Set a working directory (optional)
WORKDIR /app

# Install some basic utilities (e.g., curl, bash, etc.)
RUN apk add --no-cache bash curl nano

# Set environment variables (optional)
ENV APP_ENV=production

# Default command to run in the container
CMD ["sh", "-c", "echo 'Hello from Docker!'; exec sh"]
