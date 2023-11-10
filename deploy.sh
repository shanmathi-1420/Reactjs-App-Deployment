#!/bin/bash

# Check the Git branch
if [[ $GIT_BRANCH == "origin/dev" ]]; then
    # Build your project
    ./build.sh

    # Log in to Docker Hub 
    docker login -u shanmathi20 -p dckr_pat_sxr5vV70lVXyBCrE0E_hx-aBm1c

  
    # Tag the image
    docker tag reactjsimg shanmathi0/dev_repo

    # Push the image to the Dev Docker Hub repository
    docker push shanmathi20/dev_repo

elif [[ $GIT_BRANCH == "origin/main" ]]; then
    # Build your project
    ./build.sh

    # Log in to Docker Hub
    docker login -u shanmathi20 -p dckr_pat_sxr5vV70lVXyBCrE0E_hx-aBm1c

   
    # Tag the image
    docker tag reactjsimg shanmathi20/prod_repo 

    # Push the image to the Prod Docker Hub repository
    docker push shanmathi20/prod_repo
else
    echo "Deployment error"
fi
