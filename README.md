# Plex Cloud Server
[![Build Status](https://app.travis-ci.com/jaysphoto/plex-cloud-server.svg?branch=master)](https://app.travis-ci.com/jaysphoto/plex-cloud-server)

Site and infrastructure configuration for running Plex Media Server.

## Development container

To build the dev container and run interactively:
```
docker build --no-cache --force-rm -t plex-cloud-server .
docker exec -ti --rm plex-cloud-server
```

##
build-essential libgmp-dev

## TODO

- Puppet
  - Plex repository and updates
  - LVM setup, extra block devices formatting and mappings
  - Lets Encrypt certificate and configuration
- Cloud
  - Add Kitchen AWS EC2 launch configuration
  - Add AWS CloudFormation template generator

## Resources

- https://support.plex.tv/articles/categories/plex-media-server/
- https://www.unixdaemon.net/puppet/puppet-integration-tests-in-seven-minutes/
- http://ehaselwanter.com/en/blog/2014/05/08/using-test-kitchen-with-puppet/
