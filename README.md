# scrumblr-docker
Docker image and Compose file to run instance of the 
[Scrumblr](https://github.com/aliasaria/scrumblr) 
collaborative whiteboard and Scrum tool

## Usage

`git clone` the contents of this repository to a local directory.

`docker-compose up -d` to startup local instances of **scrumblr** and **Redis**.

Access you local instance of **scrumblr** at `http://localhost:80`.

Redis data is persisted in a Docker named volume by default. See 
description of environment variables below for configuration 
options.

### Environment variables

* `SCRUMBLR_PORT`: the port that the **scrumblr** service should listen on, default `80`
* `REDIS_HOST`: the hostname of the redis instance to connect to, default `redis`
* `REDIS_PORT`: the port that redis service should be connected on, default `6379`

## Copyright and license

Copyright (c) 2020 Markus Suhr

Contents of this project are submitted to the public domain 
according to terms of the [Unlicense](https://unlicense.org). 
See [LICENSE](LICENSE) file.

This project relies on the following third-party projects:

* **scrumblr** (c) [ali asaria, GPL v3 license](https://github.com/aliasaria/scrumblr)
* **Redic** (c) [Salvatore Sanfilippo, BSD license](https://github.com/redis/redis)
