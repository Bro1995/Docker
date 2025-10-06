Option A — Docker directly

# Build an image named "my-flask-app"
docker build -t my-flask-app .

# Run a container in the background & map ports 8080 -> 5000
docker run -d --name my-flask-container -p 8080:5000 my-flask-app


Option B — Docker Compose
# Build & start in the background
docker-compose up --build -d

curl -s http://localhost:8080

***************
Common commands & troubleshooting
*****************************************************
# See running containers
docker ps

# View container logs
docker logs -f my-flask-container
# or with compose
docker-compose logs -f

# Restart / stop
docker restart my-flask-container
docker stop my-flask-container && docker rm my-flask-container
# or with compose
docker-compose restart
docker-compose down
