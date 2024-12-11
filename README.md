# rails-docker

This repository originally contained helpful Dockerfiles for developing, building (CI pipeline) and running Ruby on Rails applications.


However, the Ruby on Rails community and ecosystem have made substantial improvements to the state of Rails and Docker which has, 
for the most part, rendered the CI pipeline (solved via Docker images and GitHub actions) and production runtime (solved 
by the default Ruby on Rails Dockerfile and kamal) no longer necessary.

Thus, all that remains in this repository is a `rails-dev` image which makes running local development of multiple 
"typical" Ruby on Rails applications a little easier. The main reason being this image can be included directly 
in a `docker-compose.yml` file referenced by `devcontainer.json`. The result, any number of projects can be developed 
locally and only one base image will ever be required. Hooray!

## Images

### rails-dev 
Base image for local Ruby on Rails development using devcontainers. Includes some reasonable assumptions:

* git
* postgres or sqlite3 support

## Releasing

New images can be released with the `dx.sh` script. To see all of the available commands run:

1. `source dx.sh`
2. `help`

## Archived

These images have been archived and are no longer updated. This section is included for reference only.

### rails-build
Base image for building a Ruby on Rails application via a CI pipeline. It assumes that
the application is using the "old" javascript pipeline (yarn, webpacker).

### rails-run
Base image for running a Ruby on Rails application. It includes the libraries and packages typically 
necessary to run a base Ruby on Rails application.


