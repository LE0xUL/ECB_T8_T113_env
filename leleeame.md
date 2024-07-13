# Build & run the enviroment
```
DUID=$(id -u) DGID=$(id -g) DUSR=$(whoami) docker compose -f ECB_T8_T113_dockenv/docker-compose.yml build
DUID=$(id -u) DGID=$(id -g) DUSR=$(whoami) docker compose -f ECB_T8_T113_dockenv/docker-compose.yml run --rm devenv
```

# Inside docker

- Build Buildroot
```
cd Buildroot-YuzukiSBC && echo N | source envsetup.sh && lunch && make mangopi_mq_dual_defconfig && make

cd Buildroot-YuzukiSBC
source envsetup.sh
lunch
make mangopi_mq_dual_defconfig
make
```
