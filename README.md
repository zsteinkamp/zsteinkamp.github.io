# noblog-jekyll
Example of a Jekyll-powered site using docker-compose for development.

## Requirements
Computer running Docker.

## Quick Start
```
> docker compose up
```
This will start a container with the current directory mounted and a Jekyll build process running and watching the current directory for changes. After that is up, navigate to [http://localhost:8080/](http://localhost:8080/) to view your site.

## What is Jekyll?
Jekyll is a Ruby-based framework for creating static websites using templates and markdown-formatted content files.
[Read more about Jekyll](https://jekyllrb.com/).

## What is Docker?
Docker is an interface to Linux's process isolation model called LXC or Containers. Docker runs natively on Linux, and will run on Mac or Windows using a Linux virtual machine. By using Docker, you do not have to install any software onto your native operating system other than Docker. Instead, you describe a virtual environment in a file (the "Dockerfile") and Docker handles installing dependencies, copying files from the host operating system, etc., and then starting a process to do some kind of work. [Read more about Docker](https://www.docker.com/).

## What is Docker Compose?
Docker Compose is a layer on top of Docker that allows you to run several Docker containers, networked together in an isolated environment, or as a shortcut to run a Docker container with a specific configuration. [Read more about docker compose](https://docs.docker.com/compose/).

## Ok, how does all this fit together?
This project requires Ruby-2.5 and a package called Jekyll to be installed. Rather than requiring you to install this on your computer to do development, it includes a Dockerfile that contains instructions to automatically set up a container within a Linux virtual machine on your computer with these dependencies. It mounts the current directory from your host system into the computer and runs a process that watches for changes in that mounted directory to trigger an automatic rebuild of your site.

This way, you can use any editor on your host system (vim, MS Code, emacs, Sublime, notepad.exe) to edit files that are mounted into the Linux environment.

## Deploying
Run `jekyll build` in the container and then copy the `public/` directory to your favorite webserver, or use the excellent [Github Pages](https://pages.github.com/) service to have all of this done automatically whenever you push code to your source code repo.
