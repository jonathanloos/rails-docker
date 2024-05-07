# /bin/bash
DOCKHER_HUB_ACCOUNT="krsyoung"

function help () {
  echo "** rails build tooling **"
  echo
  echo "commands:"
  echo "  build <image> <version>   - build the docker image and tag as latest"
  echo "  freshen <image> <version> - build the image, tag as latest and push to Docker Hub"
  echo "  push <image> <version>    - push the version to Docker Hub"
  echo "  release <image> <version> - add the version tag to latest and push to Docker Hub"
  echo "  update <image> <version>  - build, tag with latest, push and tag with the version"
  echo "  images                    - list the available images"
  echo
  echo "example (test and release): "
  echo "1. install latest packages for rails-run 3.3.1 image"
  echo "   > freshen rails-run 3.3.1"
  echo "2. after testing, promote latest image to new 3.3.1 tag"
  echo "   > release rails-run 3.3.1"
  echo
  echo "example (full send): "
  echo "1. build, tag and deploy an updated image rails-run 3.3.1 image"
  echo "   > update rails-run 3.3.1"
  echo
}

function images () {
  echo "images:"
  echo " - rails-build"
  echo " - rails-run"
  echo " - anony-base"
}

# login to docker
function login () {
  docker login --username=$DOCKHER_HUB_ACCOUNT
}

# tag an exiting image as latest and push
function release () {
  image=$1
  version=$2
  [ -z "$image" ] && echo "Error: need an image." && return 1
  [ -z "$version" ] && echo "Error: need an version." && return 1
  echo "Releasing $image:$version"

  # tag the specific version with latest  
  push $image $version
  docker tag $DOCKHER_HUB_ACCOUNT/$image:$version $DOCKHER_HUB_ACCOUNT/$image:latest
  push $image latest
}

# build image
function build () {
  image=$1
  version=$2
  [ -z "$image" ] && echo "Error: need an image." && return 1
  [ -z "$version" ] && echo "Error: need an version." && return 1
  echo "Building $image:$version"

  dockerfile="$image/Dockerfile-$version"
  if [ ! -f $dockerfile ]; then
    echo "Error: no Dockerfile found at $dockerfile"
    return 1
  fi

  # build, without cache and apply a version tag based on the ruby version
  docker build --no-cache -f $dockerfile -t $DOCKHER_HUB_ACCOUNT/$image:$version $image/
}

function push () {
  image=$1
  version=$2
  [ -z "$image" ] && echo "Error: need an image." && return 1
  [ -z "$version" ] && echo "Error: need an version." && return 1

  echo "Pushing $image:$version"
  docker push "$DOCKHER_HUB_ACCOUNT/$image:$version"
}

# build image and tag with current date
function freshen () {
  image=$1
  version=$2
  [ -z "$image" ] && echo "Error: need an image." && return 1
  [ -z "$version" ] && echo "Error: need an version." && return 1

  echo "Freshening $image-$version"

  build $image $version
  push $image latest
}

# build image and tag with current date
function update () {
  image=$1
  version=$2
  [ -z "$image" ] && echo "Error: need an image." && return 1
  [ -z "$version" ] && echo "Error: need an version." && return 1

  echo "Updating $image:$version"

  build $image $version
  release $image $version
  release $image latest
}

help