#!/bin/bash


source venv/bin/activate

# Subscription ID for the subscription attached to the chat messages topic.
export SUBSCRIPTION_ID="ChatMessageSub"

python3 bot.py
