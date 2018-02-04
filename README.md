# d-grafana

<<<<<<< HEAD
This repo contains files for creating a Grafana Docker container.

## Make the docker image

```
./build_grafana.sh
./run_grafana.sh
```

This uses the run script in `scripts/` to run the 
grafana server.

The build script builds the container image using the
Dockerfile.

The run script contains the `docker run` command.

This docker image is based on [grafana-docker](https://github.com/grafana/grafana-docker)
on github.

### Persistent data

MongoDB will store data in `/var/lib/grafana`.
Map `/var/lib/grafana` to the host to keep data persistent.

```
$ mkdir -p /tmp/mongodb

$ docker run \
    ...
    -v /tmp/grafana:/var/lib/grafana \
    ...
```


=======
Scripts for setting up a Docker image for Grafana.
>>>>>>> 432e9deea43b06d4dd2075db522014b1e57c3893
