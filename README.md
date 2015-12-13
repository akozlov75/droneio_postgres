# Drone CI with postgres database, see more here: http://readme.drone.io/setup

### Dockerfile:
Replace {client id here} and {client secret here} with
your's registration data

### Build:
```bash
docker-compose build
```

### Run
```bash
docker-compose up db
docker-compose up ubuntu
```
