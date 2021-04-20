#!/bin/bash
set -e

#If GAM is not installed start setup or otherwise just run gam
if [ ! -d "$HOME/bin/gam" ]; then
    $HOME/install-gam
elif [ "$@" === "update-gam" ]; then
    bash <(curl -s -S -L https://git.io/install-gam) -l
else
    $HOME/bin/gam/gam "$@"
fi