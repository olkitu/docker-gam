# Docker GAM

![Docker Build Status](https://img.shields.io/docker/build/olkitu/docker-gam) ![Docker Pulls](https://img.shields.io/docker/pulls/olkitu/docker-gam) ![Docker Stars](https://img.shields.io/docker/stars/olkitu/docker-gam)

GAM is CLI to manage Google Workspace: https://github.com/jay0lee/GAM/ . This is just container version of GAM and will install it to Docker Container.

## Setup

On first run this will start setup.

```
docker run --rm -it -v gam-volume:/home/gam --name docker-gam olkitu/docker-gam
```

Follow then setup guide. This is only CLI installation on Linux Alpine.

## After setup

After setup, just run 

```
docker run --rm -it -v gam-volume:/home/gam --name docker-gam olkitu/docker-gam [command]
```

Example

```
docker run --rm -it -v gam-volume:/home/gam/ --name docker-gam olkitu/docker-gam info domain
```

## Delete

Remove docker volume to delete from your local computer. If you delete volume then you have to set up again to use GAM.

```
docker volume rm gam-volume
```

## License

[MIT](https://github.com/olkitu/docker-gam/blob/main/LICENSE)