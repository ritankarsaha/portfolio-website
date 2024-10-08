# Variables
APP_NAME = portfolio-app
PORT = 3000

# Build the Docker image
build:
	docker build -t $(APP_NAME) .

# Run the Docker container
run:
	docker run -p $(PORT):80 $(APP_NAME)

# Build and Run the container with Docker Compose
compose-up:
	docker-compose up --build

# Stop Docker Compose services
compose-down:
	docker-compose down

# Clean up Docker images
clean:
	docker rmi $(APP_NAME)

# Remove all stopped containers and unused images
prune:
	docker system prune -f

# Show Docker logs
logs:
	docker logs $(APP_NAME)

# Display running containers
ps:
	docker ps
