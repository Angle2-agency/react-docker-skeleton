# Getting Started with Docker React App

The project uses the Docker containers and Makefile utility. 
For a quick deploy make next steps:

* copy `.env.example` file to `.env` and correct variables according to your environment
* Check that the selected ports are not occupied by other processes in the system
* Use `make` command and wait process finish

## Environment variables

* APP_ENV - Current environment. Available `dev` & `prod`
* COMMAND - Command from `package.json` to use for a start
* NODE_VER - Version of the node. Use very carefully.
* NGINX_PORT - Production build port
* NODE_PORT - Developing port

## Available Makefile commands

* make - Default command. Automatically start project according to environment

* start-docker - Start docker containers
* restart-docker - Re-Start docker containers
* down-docker - Down docker containers

* install-packages - run command to install `npm` packages
* start-dev - run `start` command from `package.json` (docker must be up)
* start-prod - run `build` command from `package.json` (docker must be up)