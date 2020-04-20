#!/bin/sh

deactivate

rm -Rf venv

python3 -m venv venv

source venv/bin/activate

pip install --upgrade pip

pip install -r requirements.txt

# Requires the following be defined:
# SUBSCRIPTION_ID=chat_messages
# GOOGLE_APPLICATION_CREDENTIALS=/path/to/chatbot/credentials.json

if [ -z "$SUBSCRIPTION_ID" ]; then
  echo "SUBSCRIPTION_ID variable not set."
  echo "Exiting..."
  exit 1
fi

if [ -z "$GOOGLE_APPLICATION_CREDENTIALS" ]; then
  echo "GOOGLE_APPLICATION_CREDENTIALS variable not set."
  echo "Exiting..."
  exit 1
fi


python bot.py

