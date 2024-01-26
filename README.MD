# Sykes Cottages Node Docker Images

## About

We use a variety of Node containers at Sykes Cottages across most of our platforms, but due to a lot of bespoke requirements in our applications using the official Node images typically required a monalithic Dockerfile to support the application.
All of our Node images are based off the [Base Sykes](https://github.com/SykesCottages/docker-base) image which uses the official Ubuntu Docker image.
We opted for this path to utilise aptitude so we could manage packages easier and utilise the package integrity verification that comes with apititude.

## Architecture Support

All our images have support for:
- `linux/amd64`
- `linux/arm64/v8`

Obtaining platform specific architectures:

```shell
docker pull --platform=<ARCHITECTURE> sykescottages/node:<VERSION>
```

Testing you have the right architecture:

```shell
docker run -it --platform=<ARCHITECTURE> sykescottages/node:<VERSION> arch
```

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
- v14.21.3 (Deprecated) - `sykescottages/node:14`
- v15.14.0 (Deprecated) - `sykescottages/node:15`
- v16.20.2 (Deprecated) - `sykescottages/node:16`
- v17.9.1 (Deprecated) - `sykescottages/node:17`
- **v18.19.0 (LTS Active EOL 2025-04-30)** - `sykescottages/node:18`
- v19.9.0 (Deprecated) - `sykescottages/node:19`
- **v20.11.0 (LTS Current EOL 2026-04-30)** - `sykescottages/node:20`
- **v21.6.1 (Current EOL 2024-06-01)** - `sykescottages/node:21`

## Image Itinerary

For better visibility of packages there is now an included aptitude itinerary with each tag, this is located in the corresponding folder to the tag.
This will give better clarity on package version changes and be reflected in the git history.

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
