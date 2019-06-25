# Plex Cloud Server
[![Build Status](https://scrutinizer-ci.com/g/jaysphoto/plex-cloud-server/badges/build.png?b=master&s=254ad09f7e5d31b6e71b8ad54d4fb5f5b52d361c)](https://scrutinizer-ci.com/g/ticketscript/backoffice-cookbook/build-status/master) [![Build Status](https://travis-ci.com/ticketscript/backoffice-cookbook.svg?token=jd2KqWLvQKyhAqLDpstV&branch=master)](https://travis-ci.com/jaysphoto/plex-cloud-server)

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
