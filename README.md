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

## Architecture

This is what's in the repo:

 - `web/` contains templates, static pages, and stylesheets for our
   website. All HTML files are [Jinja2][jinja2] templates.
 - `events.yaml` contains our data model (currently only events).
 - `bin/build` is a build script that combines the templates and data
   and outputs a static site at `ignore/dist`.
 - In local development, we serve `ignore/dist` using Python's built
   in HTTP server. We also rebuild on file changes. [Overmind][overmind]
   coordinates the processes.
 - In production, the site is built using Nix and served using Nginx.
   (Laurens's personal Nix config imports `release.nix` and adds it to
   his Nginx setup).
 - There are some miscelaneous scripts that are used for linting etc.
 - Nix is used for the development environment. I'll be happy to
   explain more about this, but there is a lot to discuss so let's do
   that when there is a need.

[jinja2]:https://jinja.palletsprojects.com/en/2.11.x/
[overmind]:https://github.com/DarthSim/overmind
