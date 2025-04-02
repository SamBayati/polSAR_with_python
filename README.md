# polSAR_with_python



## Navigate to your project directory
```shell
cd /path/to/project
```

## Build the Docker image
```shell
docker build -t polsar-analysis .
```

## Run the container
### Linux - Debian based distros
```shel
docker run -p 8888:8888 -v $(pwd)/data:/projects/data -v $(pwd)/src:/projects/src polsar-analysis
```
### Windows
```Shell
docker run -p 8888:8888 -v ${PWD}/data:/projects/data -v ${PWD}/src:/projects/src polsar-analysis
```
