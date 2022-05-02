# openstack-cli

A (base-)Docker image to run openstack cli.

## Usage

- customize `.envrc-dist` (for [direnv](https://direnv.net/))
- run image:

```sh
$ make shell
# prints "openstack --help"
$ make shell CMD="server list"
# prints "openstack server list" output
```
