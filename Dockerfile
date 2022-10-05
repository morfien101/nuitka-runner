FROM python:3.9-slim as py3.9-src
FROM python:3.10-slim as py3.10-src

FROM py3.9-src as py3.9

RUN apt-get update && apt-get install -y \
  build-essential \
  patchelf \
  ccache \
  && apt autoremove \
  && apt-get clean \
  && pip install nuitka ordered-set zstandard

ENTRYPOINT [ "/bin/bash" ]

FROM py3.10-src as py3.10

RUN apt-get update && apt-get install -y \
  build-essential \
  patchelf \
  ccache \
  && apt autoremove \
  && apt-get clean \
  && pip install nuitka ordered-set zstandard

ENTRYPOINT [ "/bin/bash" ]