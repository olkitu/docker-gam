@echo off
docker run --rm -it -v gam-volume:/home/gam/ --name docker-gam ghcr.io/olkitu/docker-gam %*