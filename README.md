# How to build EOS.io Debian package from sources

## Clone release tag
```shell
$ git clone --recursive --branch v2.0.5 git@github.com:EOSIO/eos.git eos-2.0.5
```

## Build Docker image
```shell
$ docker build ./docker/ -t eos-build
```

## Run Docker container
According to the build script, a minimum of 7GB of RAM is expected on the building machine. On MacOS systems you must increase the overall limit using the GUI (default is 2GB).
The image expects the EOS.io source directory mounted in `/src` and all the outcome of the build process will go into `/out`. E.g.
```shell
$ docker run --memory 8g -v /Users/diegoll/dev/work/lacchain/interoperability/eos-2.0.5:/src -v /Users/diegoll/dev/work/lacchain/interoperability/output:/out eos-build
```
The whole process takes between 1 and 2 hours
