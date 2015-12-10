# ******************************************
# Drone CI in docker
# see more here: http://readme.drone.io/setup
# ******************************************

# Pull from base Ubuntu image
FROM ubuntu:14.04

# Set to silent mode
ENV DEBIAN_FRONTEND noninteractive

# Do system updates and install dependencies
RUN apt-get update
RUN apt-get -y install wget
RUN apt-get clean

# Database settings,
# if you use ssl mode -> delete from DATABASE_CONFIG this ?sslmode=disable
ENV DATABASE_DRIVER postgres
ENV DATABASE_CONFIG postgres://drone:asd567okm@db:5432/drone?sslmode=disable

# GitHub auth
ENV REMOTE_DRIVER github
ENV REMOTE_CONFIG https://github.com?client_id=34cf72fde9f6b7216dd3&client_secret=7db2807112e50660a95ea6d82a3b639f00555590

# Bitbucket auth
# DRONE_BITBUCKET_CLIENT
# DRONE_BITBUCKET_SECRET

# Install drone
RUN wget http://downloads.drone.io/0.4.0/drone.deb
RUN dpkg -i drone.deb
