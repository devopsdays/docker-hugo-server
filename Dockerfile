#
# Runs Hugo static site generator as a local server
#
FROM databliss/docker-hugo:0.15.2
MAINTAINER Randolph Kahle "randolph.kahle@databliss.net"

WORKDIR /site
ENV VIRTUAL_HOST="http://docker.local:1313" 

EXPOSE 1313

CMD hugo --renderToDisk=true --watch=true --bind="0.0.0.0" --baseURL="${VIRTUAL_HOST}" server /site
