# Homebrew Tap for nnanto's Tools

This is a custom Homebrew tap containing various CLI tools developed by nnanto.

## Available Formulas

- **localsearch** - A fast, local search engine with vector embeddings and SQLite storage

## Usage

Add the tap:

```bash
brew tap nnanto/tools
```

Install any tool:

```bash
brew install localsearch
# brew install other-tool-name
```

Or install directly without adding the tap:

```bash
brew install nnanto/tools/localsearch
```

## Available Tools

### localsearch

A fast, local search engine with vector embeddings and SQLite storage.

```bash
brew install localsearch
```

[Documentation](https://github.com/nnanto/localsearch)

### Future Tools

More tools will be added to this tap as they are developed.

## Updating

To update all tools:

```bash
brew update
brew upgrade
```

To update a specific tool:

```bash
brew upgrade localsearch
```

## Testing Formulas Locally

To test the formula before installing:

```bash
# Clone this repository
git clone https://github.com/nnanto/homebrew-tools.git
cd homebrew-tools

# Test the formula syntax
brew audit --strict Formula/localsearch.rb

# Install from local formula
brew install --build-from-source Formula/localsearch.rb
```

## Contributing

If you encounter any issues with the formulas, please open an issue in this repository.

## Maintenance

This tap is automatically updated when new releases are published to the respective tool repositories.