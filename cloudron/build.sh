cd ..
docker build -t fbartels/bitwarden-cloudron -f Dockerfile.cloudron .
docker push fbartels/bitwarden-cloudron
