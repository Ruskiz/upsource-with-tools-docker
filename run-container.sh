#!/bin/sh
UPSOURCE_HOME="/opt/upsource"
IMAGE_NAME="upsource-node10-python2-3:1.0.0"

docker run -it --name upsource-with-node  \
            -v $UPSOURCE_HOME/data:/opt/upsource/data \
            -v $UPSOURCE_HOME/conf:/opt/upsource/conf  \
            -v $UPSOURCE_HOME/logs:/opt/upsource/logs  \
            -v $UPSOURCE_HOME/backups:/opt/upsource/backups  \
            -p 8080:8080 \
           $IMAGE_NAME 
