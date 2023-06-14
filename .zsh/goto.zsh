if [[ "$(uname)" == "Darwin" ]]; then
    # Autoload the compinit function for on-demand loading of completion scripts.
    autoload -Uz compinit

    # Initialize and enable the Zsh completion system using compinit.
    compinit

    # Source the goto.sh completion script provided by Homebrew.
    source $(brew --prefix)/etc/bash_completion.d/goto.sh
fi
