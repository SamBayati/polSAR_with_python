# polSAR_with_python




How to run the Code? 
* the code is being packaged in a ducker container.
    
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
####Run as Default memory
```Shell
docker run -p 8888:8888 -v ${PWD}/data:/projects/data -v ${PWD}/src:/projects/src polsar-analysis
```
#### If need to give more memory allocation to the jupyter server run the following
```shell

```
