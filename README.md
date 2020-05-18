Project Status
==============

ECC is not currently in business.  The various projects that are published in 
this repo have been duplicated into their own repositories under 
https://github.com/ckxng.

Additionally, few of these Docker containers still work, because the centos:6.4
base that most of them depend on is no longer available.

ecc12/docker
============

These are the public docker images used by ECC.

How to use this repo
--------------------

This is an "old style" repo with many containers inside a single GitHub repo.
As such, this readme may appear on other containers besides the example listed
below.  The specifics may vary from container to container.

Download an image:

    docker pull ecc12/hhvm-fastcgi

Start a container based on an image:

    SERVER=$( docker run -d -p 9000:9000 -v /data/site1:/var/www ecc12/hhvm-fastcgi )

Stop a container:

    docker stop $SERVER
