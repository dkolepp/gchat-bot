#!/bin/bash


oc new-app python:3.6~https://github.com/dkolepp/gchat-bot.git \
  --env APP_FILE=bot.py
