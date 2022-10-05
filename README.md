# nuitka-runner

This project holds the Dockerfile for  https://hub.docker.com/repository/docker/morfien101/nuitka

## What is it?

See: [Nuitka Page](https://nuitka.net/index.html)

Basically, this is a ready to use docker container to compile your python in via Nuitka.

Just a note of caution: What you compile on is what you run on. So if you compile on a Mac, you run on a mac.
This docker image is Linux using `gcc` so it will only run on a Linux machine that uses `gcc`. It will not run in alpine.

## How do I use it?

Generally you would need to install dependencies and then compile.

See the example directly for a pretty simple example.

1. Install Python dependencies
2. Run Python with the nuitka module loaded. `python -m nuitka --help`

## Contribute

If you would like to contribute to the project please make use of the normal github channels. Issues and PRs.