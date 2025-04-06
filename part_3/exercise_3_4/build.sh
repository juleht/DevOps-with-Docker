#!/bin/bash

# Check if the correct number of arguments are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <GitHubRepo> <DockerHubRepo>"
    exit 1
fi

# Assign arguments to variables
GITHUB_REPO=$1
DOCKER_HUB_REPO=$2
echo "$GITHUB_REPO"
echo "$DOCKER_HUB_REPO"

# Extract the repository name from the GitHub repository URL
REPO_NAME=$(basename "$GITHUB_REPO")
echo "$REPO_NAME"

# Clone the GitHub repository
git clone "https://github.com/${GITHUB_REPO}.git"
echo "$GITHUB_REPO"

# Change directory to the cloned repository
cd "$REPO_NAME" || exit
echo "$REPO_NAME"

# Build the Docker image
docker build -t "$DOCKER_HUB_REPO" .
echo "$DOCKER_HUB_REPO"

# Log in to Docker Hub using the personal access token
echo "Logging in to Docker Hub with personal access token:"
if ! echo "$DOCKER_PWD" | docker login -u "$DOCKER_USER" --password-stdin; then
    echo "Error: Docker login failed!"
    exit 1
fi

# Push the Docker image to Docker Hub
docker push "$DOCKER_HUB_REPO"

echo "The Docker image has been successfully built and pushed to Docker Hub!"
