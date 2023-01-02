# minimum-container-ruby

## Setup
```
docker export $(docker create ubuntu:latest) | tar -C rootfs -xvf -
```

## Example
```
sudo ruby container.rb run /bin/bash
```
