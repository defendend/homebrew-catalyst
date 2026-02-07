# Homebrew Tap for Catalyst

AI-powered coding agent CLI with multi-provider LLM support (GLM, Kimi, DeepSeek, Ollama, OpenAI).

## Installation

```bash
brew tap defendend/catalyst
brew install catalyst
```

## Usage

```bash
# Set API key
export GLM_API_KEY="your-key"

# Interactive chat with agent mode
catalyst

# One-shot query
catalyst ask "Explain Rust ownership"

# Use specific provider
catalyst -p kimi
catalyst -p deepseek
catalyst -p ollama
```

## More Information

- [Download Binaries](https://github.com/defendend/catalyst-releases/releases)
- [Full Documentation](https://github.com/defendend/catalyst-releases#readme)
