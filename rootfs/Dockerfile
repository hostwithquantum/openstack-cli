FROM ghcr.io/hostwithquantum/python-poetry:v0.1.0

ADD workspace /workspace
WORKDIR /workspace
RUN ${POETRY_CMD} install

ENTRYPOINT [ "/root/.local/bin/poetry", "run", "openstack" ]
