# rails-docker

This repository contains helpful Dockerfiles for building (CI pipeline) and running Ruby on Rails applications.

There are two images published from this repository:

**rails-build**
This image is intended to be used when building a rails application via a CI pipeline. It assumes that
the application is using the "old" javascript pipeline (yarn, webpacker).


**rails-run**
This image is to be used for running the actual application. It includes the libraries and packages typically 
necessary to run a base rails application.

## Releasing

New images can be released with the `dx.sh` script. To see all of the available commands run:

1. `source dx.sh`
2. `help`


