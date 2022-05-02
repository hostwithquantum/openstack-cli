TAG?=dev
CMD?=--help

.PHONY: build
build:
	docker build \
		-t ghcr.io/hostwithquantum/openstack-cli:$(TAG) \
		rootfs/

.PHONY: shell
shell: build
	$ docker run \
		-e OS_USERNAME \
		-e OS_PASSWORD \
		-e OS_AUTH_URL \
		-e OS_TENANT_NAME \
		-e OS_DOMAIN_NAME \
	ghcr.io/hostwithquantum/openstack-cli:$(TAG) \
		$(CMD)
