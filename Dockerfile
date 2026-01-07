# Use official MongoDB base image
FROM mongo:7.0

# Set environment variables for MongoDB
ENV MONGO_INITDB_DATABASE=tier-demo
ENV MONGO_INITDB_ROOT_USERNAME=admin
ENV MONGO_INITDB_ROOT_PASSWORD=admin123

# Optional: copy initialization scripts
# Any .js or .sh files in /docker-entrypoint-initdb.d/ will be executed on container start
COPY ./init-db.js /docker-entrypoint-initdb.d/

# Expose MongoDB default port
EXPOSE 27017
