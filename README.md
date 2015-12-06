[![Travis](https://img.shields.io/travis/beevelop/docker-android-nodejs.svg?style=flat-square)](https://travis-ci.org/beevelop/docker-android-nodejs)
[![Docker Pulls](https://img.shields.io/docker/pulls/beevelop/android-nodejs.svg?style=flat-square)](https://links.beevelop.com/d-android-nodejs)
[![ImageLayer](https://badge.imagelayers.io/beevelop/android-nodejs:latest.svg)](https://imagelayers.io/?images=beevelop/android-nodejs:latest)
[![Beevelop](https://links.beevelop.com/honey-badge)](https://beevelop.com)

# Android 6 with the latest Node.js and npm
### based on [beevelop/android](https://github.com/beevelop/docker-android)
----
### Pull from Docker Hub
```
docker pull beevelop/android-nodejs:latest
```

### Build from GitHub
```
docker build -t beevelop/android-nodejs github.com/beevelop/docker-android-nodejs
```

### Run image
```
docker run -it beevelop/android-nodejs bash
```

### Use as base image
```Dockerfile
FROM beevelop/android-nodejs:latest
```
