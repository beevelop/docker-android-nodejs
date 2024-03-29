![GitHub Workflow Status](https://img.shields.io/github/actions/workflow/status/beevelop/docker-android-nodejs/docker.yml?style=for-the-badge)
![Docker Pulls](https://img.shields.io/docker/pulls/beevelop/android-nodejs.svg?style=for-the-badge)
![Docker Stars](https://img.shields.io/docker/stars/beevelop/android-nodejs?style=for-the-badge)
![Docker Image Size (tag)](https://img.shields.io/docker/image-size/beevelop/android-nodejs/latest?style=for-the-badge)
![License](https://img.shields.io/github/license/beevelop/docker-android-nodejs?style=for-the-badge)
[![GitHub release](https://img.shields.io/github/release/beevelop/docker-android-nodejs.svg?style=for-the-badge)](https://github.com/beevelop/docker-android-nodejs/releases)
![GitHub Release Date](https://img.shields.io/github/release-date/beevelop/docker-android-nodejs?style=for-the-badge)
![CalVer](https://img.shields.io/badge/CalVer-YYYY.MM.MICRO-22bfda.svg?style=for-the-badge)
[![Beevelop](https://img.shields.io/badge/-%20Made%20with%20%F0%9F%8D%AF%20by%20%F0%9F%90%9Dvelop-blue.svg?style=for-the-badge)](https://beevelop.com)

# Android 13 with Node.js `v18` and npm / yarn

### based on [beevelop/android](https://github.com/beevelop/docker-android)

- Java `11.0.17`
- Gradle `4.4.1` (Groovy: `2.4.17`)
- Apache Maven `3.6.3`
- Ant `1.10.7`
- Node.js `v18.17.0`
- npm `9.6.7`

### Pull, build or run this image

```bash
# pull the most recent tag / release
docker pull beevelop/android-nodejs:v2023.10.1

# or run the image interactively
docker run --rm --name beevelop -it beevelop/android-nodejs:v2023.10.1 bash

# or build the image from GitHub
docker build -t beevelop/android-nodejs github.com/beevelop/docker-base
```

### Or use it as a base image

```Dockerfile
FROM beevelop/android-nodejs:v2023.10.1
```

---

![Beevelop's Docker Image Hierarchy](https://gist.githubusercontent.com/beevelop/b0cddab7209a683c77560d06ff00bc8e/raw/15429ee1d02e2c4dc019b760ca8c7ceff5911b82/hierarchy.png)

---

### Use tags where possible, because

![One does not simply use latest](https://i.imgflip.com/1fgwxr.jpg)
