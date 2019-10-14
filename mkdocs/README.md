# Mkdocs <img align="right" src="https://img.shields.io/docker/cloud/automated/guillaumedelre/mkdocs?style=flat-square"> <img align="right" src="https://img.shields.io/docker/cloud/build/guillaumedelre/mkdocs?style=flat-square">

- [`1.0.4`, `latest` (*mkdocs/1.0.4/Dockerfile*)](https://github.com/guillaumedelre/dockerfiles/tree/master/mkdocs/1.0.4/Dockerfile)

This directory contains files for the [MkDocs](http://www.mkdocs.org/) documentation.

Mkdocs si started with live reload feature enabled.

## Structure

`./resources/docs/` contains all markdown files for the documentation.

`./resources/mkdocs.yml` the mkdocs configuration file.

`./docker-compose.yaml` the docker-compose file to run MkDocs.

`./Dockerfile` the docker image configuration.

`./entrypoint.sh` is the entrypoint of docker image.

## Docker

Workdir is set to `/project`

## Usage

Grab the image, and run one of tool with your project mounted in the work directory `/project` on this image:

```
cd my_documentation_project
docker pull guillaumedelre/mkdocs
docker run -t -i -v `pwd`:/project guillaumedelre/mkdocs
```

### Troubleshooting

Use docker command to see if all required containers are up and running:

```bash
docker ps
```

Check logs of mkdocs server container:

```bash
docker logs mkdocs
```

Sometimes you might just want to review how things are deployed inside a running
 container, you can do this by executing a _bash shell_ through _docker's
 exec_ command:

```bash
docker exec -ti mkdocs bash
```

## Links

* [mkdocs](http://www.mkdocs.org/).
* [mkdocs-material](https://squidfunk.github.io/mkdocs-material).
* [markdown syntax](https://daringfireball.net/projects/markdown/syntax).
