#!/bin/bash
stopped_containers=$(docker ps -a -q -f status=exited)

if [ -n "$stopped_containers" ]; then
  # Remove all stopped containers
  docker rm $stopped_containers
else
  echo "No stopped containers to remove."
fi
