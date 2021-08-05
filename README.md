# jupyter-cpp-kernel

A Docker setup that installs `xeus-cling` into the base image provided by the `jupyter` Docker organization.

## Building and running the container

From within the cloned repository:

```
docker build -t <tag> .
docker run -p 8888:8888 <tag>
```

This builds the Docker image, spins up a container and makes it available at `localhost:8888`.

## Deploying for use with JupyterHub

The image needs to be deployed to a Docker registry accessible from the Jupyter hub instance. To do so, add the Docker registry URL to the tag e.g. `<tag>=ssc-jupyter.iwr.uni-heidelberg.de:5000/cpp-jupyter:latest`. Then push the image to the registry:

```
docker login ssc-jupyter.iwr.uni-heidelberg.de:5000
docker push ssc-jupyter.iwr.uni-heidelberg.de:5000/cpp-jupyter:latest
```

Then, add the image name to the JupyterHub configuration to make it accessible on the instance.
