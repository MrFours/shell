ZSH_HOME="$HOME/.zsh"

# Load aliases if present
[[ -f $ZSH_HOME/aliases.zsh ]] && source $ZSH_HOME/aliases.zsh

# Load functions if present
[[ -f $ZSH_HOME/functions.zsh ]] && source $ZSH_HOME/functions.zsh

# Load autocompletions if present
[[ -f $ZSH_HOME/goto.zsh ]] && source $ZSH_HOME/goto.zsh

# Set environment if present
[[ -f $ZSH_HOME/env.zsh ]] && source $ZSH_HOME/env.zsh

# Add paths to PATH
[[ -f $ZSH_HOME/path.zsh ]] && source $ZSH_HOME/path.zsh

eval "$(oh-my-posh init zsh --config $HOME/mrfours.json)"
