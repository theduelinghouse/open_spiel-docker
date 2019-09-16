# open_spiel-docker

This repository is to enable setting up OpenSpiel on Mac. It references [the official instructions to install OpenSpiel on Linux](https://github.com/deepmind/open_spiel/blob/master/docs/install.md). 

```shell
git clone https://github.com/theduelinghouse/open_spiel-docker.git
cd open_spiel-docker

# Clone OpenSpiel as a subdirectory of open_spiel-docker
git clone https://github.com/deepmind/open_spiel.git


docker build -t open_spiel .
docker run open_spiel examples/example --game=tic_tac_toe
```
