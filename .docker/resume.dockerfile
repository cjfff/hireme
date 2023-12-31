FROM contextgarden/context:current

RUN apt update \
  && apt install -y \
    make \
    pandoc \
  && apt clean \
  && rm -rf /var/lib/apt/lists/*

RUN mtxrun --generate

COPY actions/entrypoint.sh /entrypoint.sh

WORKDIR /data
