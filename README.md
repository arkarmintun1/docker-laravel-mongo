# docker-mongo-laravel

Docker setup to use with mongo as an alternative for mysql database


## Usage

To get started, make sure you have [Docker installed](https://docs.docker.com/docker-for-mac/install/) on your system, and then clone this repository. Add your entire Laravel project to the `src` folder, then open a terminal and from this cloned respository's root run `docker-compose build && docker-compose up -d`. 

Open up your browser of choice to [http://localhost:8080](http://localhost:8080) and you should see your Laravel app running as intended. 

Containers created and their ports are as follows:

- **nginx** - `:8080`
- **mongo** - `:27017`
- **php** - `:9000`