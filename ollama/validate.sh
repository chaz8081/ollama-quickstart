#!/bin/bash

# Load environment variables from ollama/.env file
if [ -f ollama/.env ]; then
  export $(grep -v '^#' ollama/.env | xargs)
fi

# Function to check if a command exists
command_exists() {
  command -v "$1" >/dev/null 2>&1
}

# Check if ollama is running (using nc to check for open port)
ollama_running() {
  nc -z "$OLLAMA_HOST" "$OLLAMA_PORT"
}

# Check if ollama is installed
ollama_installed() {
  command_exists ollama
}

# --- Main Script ---

echo "Validating Ollama installation and status..."

if ollama_running; then
  echo "Ollama is running and accessible on $OLLAMA_HOST:$OLLAMA_PORT."
else
  echo "Ollama is NOT currently running on $OLLAMA_HOST:$OLLAMA_PORT."
  if ollama_installed; then
    echo "Ollama appears to be installed. Just needs to be started: 'ollama serve'"
    exit 1
  else
    echo "Ollama is NOT installed. Please install Ollama."
    exit 1  # Exit with an error code, stopping Tilt
  fi
fi

echo "Ollama validation complete. Proceeding with Open WebUI and SearXNG startup..."
exit 0