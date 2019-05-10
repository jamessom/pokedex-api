# A sample Pokédex API

## Running docker environment

> This API uses docker and docker-compose

Access directory that repository is cloned and throught the terminal run:

- `docker-compose build` for build images, create containers etc.
- `docker-compose up` for install `gems`, create database, run seeds and initialize development server.

> This project have a script in /bin/start that automate all rails commands in startup.

## Populating the database for the initial data

`docker-compose run --rm app bundle exec rails db:seed`

## Starting and ending containers
To initialize run the command `docker-compose start` and
to end `docker-compose stop`

## Accessing the rails container

Run the `docker-compose run --rm pokedex_api` command

## Accessing the Console

Run `docker-compose run --rm pokedex_api bundle exec rails c`

## Accessing the container terminal

Run the `docker-compose run --rm pokedex_api sh` command

## Viewing the server log

Run the `docker-compose logs --tail=100 -f pokedex_api` command

## If you want to run other commands
You will need to execute the complete command like `bundle exec ...`