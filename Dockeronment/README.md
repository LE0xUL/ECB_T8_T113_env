# DOCKERONMENTS

Docker files to create a shell docker environment in the current directory to build kernel, filesystem, uboot, etc... 

## Basic use

- Copy those files inside to `Dockeronment` directory where you will to run the environment 
- Build: `DUID=$(id -u) DGID=$(id -g) DUSR=$(whoami) docker compose -f Dockeronment/dockeronment-compose.yml build`
- Run: `DUID=$(id -u) DGID=$(id -g) DUSR=$(whoami) docker compose -f Dockeronment/dockeronment-compose.yml run --rm dockeronment`


## Build and run without docker-compose

- Build: `docker build --build-arg DUID=$(id -u) --build-arg DGID=$(id -g) --build-arg DUSR=$(whoami) -f Dockeronment/ECB_T8_T113.dockeronment -t dockeronment .`
- Run: `docker run --rm -it -v $(pwd):$(pwd) --workdir $(pwd) dockeronment`


