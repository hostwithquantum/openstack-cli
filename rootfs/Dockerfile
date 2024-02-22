FROM ghcr.io/hostwithquantum/python-poetry:v0.5.0

ADD workspace /workspace
WORKDIR /workspace
RUN apt update -y \
    && apt install -y libffi-dev \
    && /usr/local/bin/poetry install

ENTRYPOINT [ "/usr/local/bin/poetry", "run", "openstack" ]
