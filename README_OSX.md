## Developing on OSX

#### Requirements
* Docker Desktop (for OSX)
* docker-sync (`gem install docker-sync`)
* a set-up baserom (see general setup guide / wiki for more details)

#### Build the docker image
`docker build . -t oot`

#### Start docker-sync and the development container

`docker-sync-stack start`

After a lot of waiting, you'll see something like "Attaching to oot_oot_1". This means the container is ready.

#### Log into the container to begin working
Note: this will be done in another tab while you leave the docker-sync tab going.

To get the container id, use `docker container ls` and use the ID from the container with image oot:latest in the following command

`docker exec-it <CONTAINER-ID> /bin/bash` You're in.

Run `make setup` followed by `make`, and you're off to the races!

#### When done working
Type Ctrl+c on the docker-cync tab to close the container and docker-sync.