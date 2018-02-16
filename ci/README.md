# CI

This folder contain the Concourse ci pipeline description file.

![screenshot](https://github.com/julienlevasseur/julienlevasseur-jekyll-docker/blob/master/ci/screenshot.png)

## Pipeline steps

* Clone this repository
* Build the docker image
* Push the docker image
* Execute the docker image, install tests dependencies and run tests.

