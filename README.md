# docker-hugo-server

Builds a Docker image to be used as a Hugo web site transformer
and web site.
Hugo will track changes and update browsers.

    docker run -d -p 1313:1313 -e VIRTUAL_HOST="http://docker.local:1313" --name hugo-server databliss/hugo-server .

The VIRTUAL_HOST environment variable sets the local reference for browsers
accessing the live local site.

The -d option runs the container in detached mode (continuous server).

The -p 1313:1313 port mapping maps the internal port 1313 to the external port 1313.

