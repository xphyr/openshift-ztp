# Instructions for using this in a container image

All of the steps that are outlined in the README.md file can be run from the container created by the included Dockerfile, or you can use a prebuild container from quay.io/markd/ztpvsphere:latest

## Building

```shell
$ podman build -t ztpvsphere:latest .
```

## Using

```shell
$ podman run ztpvsphere:latest /bin/bash
# Run all the readme commands from this shell
```