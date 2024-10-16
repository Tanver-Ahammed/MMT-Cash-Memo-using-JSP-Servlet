#!/bin/bash

# Shell script to build the Maven project, Docker image, and start services using Docker Compose

# Variables
IMAGE_NAME="mmt-cash:v1"  # Name of the Docker image
COMPOSE_FILE="docker-compose.yaml"  # Docker Compose file
CONTAINER_NAME="mmt-cash"  # Name of the main container
MYSQL_CONTAINER_NAME="docker-mysql"  # Name of the MySQL container

# Step 1: Build the Maven project
echo "Building the Maven project..."
sudo apt install maven
mvn clean package -DskipTests

# Check if Maven build was successful
if [ $? -eq 0 ]; then
    echo "Maven project built successfully!"
else
    echo "Failed to build the Maven project."
    exit 1
fi

# Step 2: Build the Docker image
echo "Building the Docker image..."
docker build -t $IMAGE_NAME .

# Check if the Docker image build was successful
if [ $? -eq 0 ]; then
    echo "Docker image built successfully!"
else
    echo "Failed to build Docker image."
    exit 1
fi

# Step 3: Bring up the services using Docker Compose
echo "Starting services using Docker Compose..."
docker-compose -f $COMPOSE_FILE up -d

# Check if the services started successfully
if [ $? -eq 0 ]; then
    echo "Services started successfully!"
else
    echo "Failed to start services."
    exit 1
fi

# Step 4: Check the status of the containers
echo "Checking container status..."
docker ps --filter "name=$CONTAINER_NAME"
docker ps --filter "name=$MYSQL_CONTAINER_NAME"

# Optionally, tail logs for troubleshooting
echo "Tailing logs..."
docker-compose -f $COMPOSE_FILE logs -f
