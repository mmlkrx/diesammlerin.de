# Website for Die Sammlerin short film

More information about the short film can be found on its [facebook page](https://facebook.com/diesammlerin).

## Deployment

The website is deployed to Github pages with middleman deploy.

Start a container by pulling from docker hub:

```shell
docker run --rm -it -v "$(pwd)":/app mmlkrx/sammlerin:latest /bin/sh
```

Or build from the dockerfile:

```shell
docker build -t sammlerin:latest .
docker run --rm -it -v "$(pwd)":/app sammlerin:latest /bin/sh
```

Run the following commands from the container:

```shell
git config --global user.name "Your Name"
git config --global user.email "your@name.com"
eval "$(ssh-agent)"
```

`ssh-agent` is running now and you can add a private key to be able to automatically deploy to Github. This is a bad solution and should be updated once socket sharing between mac and docker containers works properly.
