#!/bin/bash
docker login -u bala0808 -p dckr_pat_-CYnYWKTEzbzfIsH60iP5egI3uc
# Tag the image with the Docker Hub repository name and version
if [[ $GIT_BRANCH == 'origin/main' ]]; then
docker tag project:v1 bala0808/prod
docker push bala0808/prod
# Docker login
elif [[ $GIT_BRANCH == 'origin/dev' ]]; then
docker tag project:v1 bala0808/dev
docker push bala0808/dev
fi
