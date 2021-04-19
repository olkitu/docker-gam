#!/bin/bash
set -e

#If GAM is not installed start setup or otherwise just run gam
if [ ! -d "$HOME/bin/gam" ]; then
    $HOME/install-gam
else
    $HOME/bin/gam/gam "$@"
fi