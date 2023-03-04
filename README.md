# noblog-jekyll
Example of a Jekyll-powered site using docker-compose for development.

## Quick Start (Development Mode)
After cloning this repo, run:
```
cd dev && docker compose up
```
This will bootstrap and start a Docker container with the current directory mounted and a Jekyll build process running and watching the current directory for changes. After that is up, navigate to [http://localhost:8080/](http://localhost:8080/) to view your site.

Edit files in the home and `_posts` directory to add/change content. You can use
any editor you like. The source directory is mounted into the Docker container.

## Production Mode
You can use this repository with GitHub Pages, or run it yourself for actual
serving.

To run in production mode, run:
```
cd prod && docker compose up -d
```
This will build the static site and start an NGINX server to serve it, making it
available at [http://localhost:8088](http://localhost:8088).

If you make changes and want to rebuild and restart, run:
```
cd prod
docker compose build
docker compose up -d
```

# History
I have used many different solutions for my personal website, starting in 1994. For content management and site structure, I moved from purely static HTML, to server-side-includes, to Perl CGI, to PHP, to Rails. For development, I would need to install various server software, databases, and programming languages, and make sure it was all running to preview content before it went live. In the early days, I would run a server at home and have port 80 and 443 open to the world and use a dynamic DNS provider since I didn't want to pay for a fixed IP. I moved to a hosting company in the early 2000s and stayed there until 2019 or so when I discovered this solution.

I like Markdown as a proxy to HTML, and Jekyll is a well developed, supported, and extensible site management system written in Ruby that uses Markdown for content, and generates static HTML for the whole site. I like Docker as a local development solution, since it eliminates the need to manage software dependencies on every computer I may want to develop on. I like managing my site content in git, and Github Pages provides an incredibly easy way to build and host Jekyll-based sites online for free, even managing SSL certs and providing for custom domains. All rolled together this is a super fast, flexible, and cheap solution.

This repository is an example of combining all three.

## Requirements
Computer running Docker.

## What is Jekyll?
Jekyll is a Ruby-based framework for creating static websites using templates and markdown-formatted content files.
[Read more about Jekyll](https://jekyllrb.com/).

## What is Docker?
Docker is an interface to Linux's process isolation model called LXC or Containers. Docker runs natively on Linux, and will run on Mac or Windows using a Linux virtual machine. By using Docker, you do not have to install any software onto your native operating system other than Docker. Instead, you describe a virtual environment in a file (the "Dockerfile") and Docker handles installing dependencies, copying files from the host operating system, etc., and then starting a process to do some kind of work. [Read more about Docker](https://www.docker.com/).

## What is Docker Compose?
Docker Compose is a layer on top of Docker that allows you to run several Docker containers, networked together in an isolated environment, or as a shortcut to run a Docker container with a specific configuration. [Read more about Docker Compose](https://docs.docker.com/compose/).

## Ok, how does all this fit together?
This project requires Ruby-2.5 and a package called Jekyll to be installed. Rather than requiring you to install this on your computer to do development, it includes a Dockerfile that contains instructions to automatically set up a container within a Linux virtual machine on your computer with these dependencies. It mounts the current directory from your host system into the computer and runs a process that watches for changes in that mounted directory to trigger an automatic rebuild of your site.

This way, you can use any editor on your host system (vim, MS Code, emacs, Sublime, notepad.exe) to edit files that are mounted into the Linux environment.

Look at the `Dockerfile`, `docker-compose.yml`, and `_config.yml` files to see how it is all set up. You can configure Github Pages for your own github account very easily.

## Deploying to GitHub Pages
Simply make edits, commit them, and run `git push` to deploy your site live. It could not be simpler!
