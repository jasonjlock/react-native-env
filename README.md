# React Native Development Environment

A [React Native](https://facebook.github.io/react-native/) development environment using Docker Compose.

## Getting Started

Download and install Docker for [Mac](https://www.docker.com/docker-mac) or [Windows.](https://www.docker.com/docker-windows)

Clone this repository:

```
git clone https://github.com/jasonjlock/react-native-env.git
```

Change directories to the new repository:

```
cd react-native-env
```

## How To Use

Start the Docker containers:

> Running this step for the first time builds the container images.
> This process can take a while.

```
docker-compose up
```

this starts a Node.js server to keep the container running.

## What Next

Initialize your React Native project.

```
docker exec -it reactnativeenv_env_1 npm run react-native-init -- YOUR_APP_NAME
```

Start the React Native packager server.

```
docker exec -it reactnativeenv_env_1 bash -c "cd YOUR_APP_NAME && npm run start"
```

### Android

Refer to the [React Native documentation](https://facebook.github.io/react-native/docs/getting-started.html) to download, install, and configure Android Studio.
After Android Studio is setup, start it, select Open an existing Android Studio Project, and find your React Native Android project.

Now that your project has been added to Android Studio, run it by pressing Control + R on Mac and Shift + F10 on Windows, then select your virtual device. This will bring up an emulator running your app. Make some code changes (App.js for example) then press the R key twice to reload the emulator.

### iOS

Refer to the [React Native documentation](https://facebook.github.io/react-native/docs/getting-started.html) to download, install, and configure Xcode.

Open YOUR_APP_NAME/ios/YOUR_APP_NAME.xcodeproj in Xcode.

Run your project by pressing Command-R. This will will bring up a simulator running your app. Make some code changes (App.js for example) then press Command-R to reload the simulator.


Stop the running containers:
```
docker-compose down
```

## Helpful Resources

* [Docker Compose](https://docs.docker.com/compose/reference/)
* [Docker Cleanup Commands](https://www.digitalocean.com/community/tutorials/how-to-remove-docker-images-containers-and-volumes)
* [React Native Docs](https://facebook.github.io/react-native/docs/getting-started.html)
