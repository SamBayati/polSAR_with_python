# polSAR_with_python


This project is a vision transformer model combined with a vqa model which allows the user to select a region on a fully polirazed SAR image and ask questions regarding the scattering mechanisms of the SAR image of the selected area on the image.




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
