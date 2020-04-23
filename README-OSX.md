To work on the project on OSX:

Requirements:
Docker Desktop (for OSX)
docker-sync (`gem install docker-sync`)

From the root directory of the repo, first build the image and tag it 'oot':
`docker build . -t oot`

Then, start docker-sync:
docker-sync-stack start

After a lot of waiting, you'll see something like "Attaching to oot_oot_1". This means you're good to go. Ctrl+c on this tab to close the container and docker-sync.

Open a new tab and log into the container. To get the container id, use 'docker container ls' and grab the ID from the container with image oot:latest
docker exec-it <CONTAINER-ID> /bin/bash

Run `make setup` followed by `make`, and you're off to the races!
