# Building using Docker

## 1. Setup requirements

To use Docker, you'll need either Docker Desktop or Docker Toolbox installed and setup based on your system.

You'll also need to prepare a local version of the project with a copied base ROM (see steps [2](../README.md#2-clone-the-repository) and [3](../README.md#3-prepare-a-base-rom) of the Linux instructions).

## 2. Create and start the Docker image build

From the root of your local project, run the following command:

```bash
docker-compose up --build
```

This should immediately begin steps [4](../README.md#4-setup-the-rom-and-build-process) and [5](../README.md#5-build-the-rom) within the Docker container.

## 3. Shell into the 'oot' container

To exec into the oot Docker image at any time, run the following command either during or after the build:

```bash
docker-compose exec oot bash
```
