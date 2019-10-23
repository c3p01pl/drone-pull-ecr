#!/bin/sh
aws configure set aws_access_key_id $PLUGIN_ACCESS_KEY
aws configure set aws_secret_access_key $PLUGIN_SECRET_ACCESS_KEY
aws configure set default.region $PLUGIN_REGION

