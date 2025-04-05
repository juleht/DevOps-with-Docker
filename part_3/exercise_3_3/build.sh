#!/bin/bash

# Check if the correct number of arguments are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <GitHubRepo> <DockerHubRepo>"
    exit 1
fi

# Assign arguments to variables
GITHUB_REPO=$1
DOCKER_HUB_REPO=$2

# Extract the repository name from the GitHub repository URL
REPO_NAME=$(basename "$GITHUB_REPO")

# Clone the GitHub repository
git clone "git@github.com:${GITHUB_REPO}.git"

# Change directory to the cloned repository
cd "$REPO_NAME" || exit
pwd

# Build the Docker image
docker build -t "$DOCKER_HUB_REPO" .

# Log in to Docker Hub using the personal access token
echo "Logging in to Docker Hub with personal access token:"
# Load environment variables from .env file
source "$(dirname "$PWD")/.env"

DOCKER_HUB_ACCESS_TOKEN=$(pass Docker/personal-access-token)
docker login -u "$DOCKER_HUB_USERNAME" --password-stdin <<< "$DOCKER_HUB_ACCESS_TOKEN"

# Push the Docker image to Docker Hub
docker push "$DOCKER_HUB_REPO"

echo "The Docker image has been successfully built and pushed to Docker Hub!"
