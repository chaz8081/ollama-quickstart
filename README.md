# Ollama Quickstart - Guide for Local Private Copilot Clone

## Overview

This repo is a quickstart guide to using ollama and serving models locally for inference.

In addition, it covers how to make use of ollama and local inference to create a private copilot clone in VS Code. There is also support for [JetBrains IDEs](https://plugins.jetbrains.com/plugin/22707-continue) but is beyond the scope of this guide.

Finally, there will also be a quick demo of a ChatGPT experience running locally using ollama and [Open WebUI](https://openwebui.com/).

### Prerequisites

- ollama
  - `brew install ollama`
  - otherwise: https://ollama.com/download
- vs code
  - `brew install --cask visual-studio-code`
  - otherwise: https://code.visualstudio.com/
- optionally: tilt and docker for open webui demo

### Pull/Run a model

```sh
# qwen2.5-coder:1.5b is released under Apache License 2.0.
ollama run qwen2.5-coder:1.5b
```

### Using Continue in VS Code with Ollama

Continue is a VS Code extension that allows you to interact with ollama models directly from within VS Code. It provides features such as chat, code completion, and more. For more information, visit: https://docs.continue.dev/.

- Install the continue VS Code extension:
  - https://marketplace.visualstudio.com/items?itemName=Continue.continue
- Start the ollama server:
  - `ollama serve`
- Configure the chat and tab completion settings pointing to local ollama server/models.

### OpenWeb UI

To spin up the OpenWeb UI environment to demo, use tilt:

- `tilt up`

### Additional Information

- [Ollama community integrations](https://github.com/ollama/ollama?tab=readme-ov-file#community-integrations)
