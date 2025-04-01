# polSAR_with_python



# Navigate to your project directory
cd /path/to/project

# Build the Docker image
docker build -t polsar-analysis .

# Run the container
docker run -p 8888:8888 -v $(pwd)/data:/projects/data -v $(pwd)/src:/projects/src polsar-analysis

