# Onehot

Website for our [data science meetup][meetup].

 [meetup]:https://www.meetup.com/onehot-data-science-utrecht/

## Development

Dependencies:

 - [Nix](https://nixos.org/download.html)
 - [direnv](https://direnv.net/#getting-started)

Common commands:

```
# Run direnv allow to automatically load a development shell
# when `cd`ing to the current directory.
$ direnv allow

# Development server + build the website in the background.
# Available on http://localhost:8000
$ start

# Run pre-commit lints and checks
$ pre-commit

# Install pre-commit lints and checks to run for every commit.
$ pre-commit --install

# List other available commands. These shell scripts have been
# added to your PATH by direnv, so you can call them directly
# (that's how `start` and `pre-commit` work).
$ ls bin/
build pre-commit serve start

```
