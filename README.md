# Personal linux box setup

**WORK IN PROGRESS**

This repo is my personal linux box as a ansible playbook.
It assumes some distro that uses `apt` (Ubuntu, Mint, Elementary).

If you do not have an `ansible` installation, run

    ./bin/get-ansible.sh

to install ansible and dependencies. After that, look into
`roles/common/main.yaml` and uncomment all modules you want to install (they are
all commented out by default except the essentials). Then run

    ./bin/bootstrap.sh

to run the playbook.

## Modules

All modules are in `roles/common/tasks`.

- `go`: Golang [**UNTESTED**]
- `r`: R and Rstudio [**UNTESTED**]
- `nodejs`: Nodejs [**TESTED**]
- `tex`: Latex setup with `TexLive` and `Latexmk` [**TESTED**]
- `dropbox`: Dropbox client [**TESTED**]
- `docker`: Docker (following the official guide) [**UNTESTED**]
- `vim`: Vim installation with Vundle package manager [**TESTED**]

## Testing with Docker

Assuming you have a working `docker` installation, you can test your setup
with `make docker-install` or `make docker-check` (calls ansible with `--check` flag).
