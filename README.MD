# Sykes Cottages Node Docker Images

## About

We use a variety of Node containers at Sykes Cottages across most of our platforms, but due to a lot of bespoke requirements in our applications using the official Node images typically required a monalithic Dockerfile to support the application.
All of our Node images are based off the [Base Sykes](https://github.com/SykesCottages/docker-base) image which uses the official Ubuntu Docker image.
We opted for this path to utilise aptitude so we could manage packages easier and utilise the package integrity verification that comes with apititude.

## Supported versions and available tags

- v4.9.1 (Deprecated) - `sykescottages/node:4`
- v5.12.0 (Deprecated) - `sykescottages/node:5`
- v6.17.1 (Deprecated) - `sykescottages/node:6`
- v7.10.1 (Deprecated) - `sykescottages/node:7`
- v8.17.0 (Deprecated) - `sykescottages/node:8`
- v9.11.2 (Deprecated) - `sykescottages/node:9`
- v10.24.1 (Deprecated) - `sykescottages/node:10`
- v11.15.0 (Deprecated) - `sykescottages/node:11`
- v12.22.12 (Deprecated) - `sykescottages/node:12`
- v13.14.0 (Deprecated) - `sykescottages/node:13`
- **v14.21.1 (LTS Maintenance EOL 23-04-30)** - `sykescottages/node:14`
- v15.14.0 (Deprecated) - `sykescottages/node:15`
- **v16.18.1 (LTS Active EOL 2023-09-11)** - `sykescottages/node:16`
- v17.9.1 (Deprecated) - `sykescottages/node:17`
- **v18.12.1 (LTS Current EOL 2025-04-30)** - `sykescottages/node:18`
- **v19.1.0 (EOL 2023-04-01)** - `sykescottages/node:19`
- v20 (Pending)

## Usage

Pulling an image:
```
docker pull sykescottages/node:version
```

Running a container:
```
docker run -it sykescottages/node:version
```

Building from this image simply reference it as part of your Dockerfile:

```
FROM sykescottages/node:version

# ... Your configuration
```

## Testing

All testing is done in the form of a SUT containers which is run by the Docker Hub (see [Automated repository tests](https://docs.docker.com/docker-hub/builds/automated-testing/) for more information) and runs a variety of shell scripts.

## Contributions

Contributions are welcome, but please adhere to the [CONTRIBUTION.MD](https://github.com/SykesCottages/docker-node/blob/master/CONTRIBUTION.MD). Also, if you could ensure that there are tests with every modification of the Dockerfiles to verify that your changes work.
