# Docker GAM

![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/olkitu/docker-gam) ![Docker Pulls](https://img.shields.io/docker/pulls/olkitu/docker-gam) ![Docker Stars](https://img.shields.io/docker/stars/olkitu/docker-gam)

GAM is CLI to manage Google Workspace: https://github.com/jay0lee/GAM/ .

## Setup

Start simple setup by downloading bash script and execute it.

Linux & MacOS

```bash
curl -o gam https://raw.githubusercontent.com/olkitu/docker-gam/main/gam
chmod +x ./gam
./gam
```

Windows

```powershell
powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/olkitu/docker-gam/main/gam.bat -OutFile gam.bat"
.\gam.bat
```

Docker

```
docker run --rm -it \
    -v gam-volume:/home/gam/ \
    --name docker-gam \
    ghcr.io/olkitu/docker-gam
```

This will on first time install and setup GAM to you. Follow instructions on screen.

## Run

After setup you can run just `./gam` on directory to execute GAM commands.

```
./gam info domain
```

## Update

```
./gam update-gam
```

## Known Issue

The persistent volume is not secure on shared machine but it's easiest way to setup GAM with Docker. After setup you can optionally copy `oauth2.txt`, `oauth2service.json` and `client_secrets.json` files to your local machine and bind mount to container and remove these from persistent volume.

## License

[MIT](https://github.com/olkitu/docker-gam/blob/main/LICENSE)
