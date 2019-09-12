# docker-cakephp2-test

    $ mkdir hoge && cd $_
    $ git clone git@github.com:oppara/docker-cakephp2-test.git docker
    $ git clone git@github.com:cakephp/cakephp.git src

    $ cd src
    $ git checkout -b 2.x origin/2.x

    $ cd ../docker
    $ make up
    $ make setup
    $ make test


[cakephp/.travis.yml at 2.x · cakephp/cakephp](https://github.com/cakephp/cakephp/blob/2.x/.travis.yml)
