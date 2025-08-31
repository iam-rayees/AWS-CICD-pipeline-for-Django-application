#!/bin/bash
set -e

docker pull rayeez/simple-python-django-app:latest

docker run -d -p 8000:8000 rayeez/simple-python-django-app:latest