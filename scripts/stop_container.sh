#!/bin/bash
containerIds=$(docker ps -aq)

if [[ ! -z "$containerIds" ]]; then
   docker rm -f $containerIds
else
   exit 0
fi
