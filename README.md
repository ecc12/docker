ecc12/docker
============

These are the public docker images used by ECC.

Download an image:

    docker pull ecc12/hhvm-fastcgi

Start a container based on an image:

    SERVER=$( docker run -d -p 9000:9000 -v /data/site1:/var/www ecc12/hhvm-fastcgi )

Stop a container:

    docker stop $SERVER

