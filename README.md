# Personal linux box setup

**WORK IN PROGRESS**

This repo is my personal linux box as a ansible playbook.
It assumes some distro that uses `apt` (Ubuntu, Mint, Elementary).

If you do not have an `ansible` installation, run

    ./bin/get-ansible.sh

to install ansible and dependencies. After that, look into
`laptop.yaml` and uncommont (append `#` to line beginning) all modules you do not want to install.
Then run

```sh
    ./bin/bootstrap.sh
```

to run the playbook.

## Modules

There are multiple roles which can be used. Each role installs a certain
group of software (e.g. some programming language and packages or groups like 
security or development tools).

The following roles are available:

- [UNTESTED] `common`: Installs base tools (git, curl, tree, ...) and serves as a collection
of tools that do not belong to a specific group. All new tools go here first.
- [TESTED] `docker`: Installs docker and docker-compose
- [TESTED] `security`: Installs Keepass2 and pass 
- [TESTED] `nodejs`: Installs nodejs (currently version 7)
- [UNTESTED] `golang`: Installs golang (currently version 1.8)
- [UNTESTED] `python`: Installs python3, virtualenv, pyenv and several data science libraries globally (numpy, scipy, pandas etc)
- [TESTED] `java8`: Installs Oracle Java8 and Maven
- [TESTED] `tex`: Installs TeXLive and Latexmk + configuration

**Note** The `common` module will likely be marked UNTESTED for ever since it 
contains new tools that have not been verified to be installed correctly. 
Possibly I will create a `staging` role that contains these new tools.

## Tools

* To create a new role, the script `bin/add-role` can be used like this: `./bin/add-role.sh <role_name>`. This
creates the appropriate directories if the role does not already exist
* Linting is available via `ansible-lint` (`pip install ansible-lint`). Use `make lint` to get tips for improvement

## Testing with Docker

Assuming you have a working `docker` installation, you can test your setup
with `make docker-install` or `make docker-check` (calls ansible with `--check` flag).
