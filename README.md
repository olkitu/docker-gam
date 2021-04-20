# Docker GAM

![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/olkitu/docker-gam) ![Docker Pulls](https://img.shields.io/docker/pulls/olkitu/docker-gam) ![Docker Stars](https://img.shields.io/docker/stars/olkitu/docker-gam)

GAM is CLI to manage Google Workspace: https://github.com/jay0lee/GAM/ . This is just container version of GAM and will install it to Docker Container.

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
    olkitu/docker-gam
```

This will on first time install and setup GAM to you. Follow instructions on screen.

After setup you can run just `./gam` on directory to execute GAM commands.

```
./gam info domain
```

## Update

```
./gam update-gam
```

## License

[MIT](https://github.com/olkitu/docker-gam/blob/main/LICENSE)
