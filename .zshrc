
~/.local/bin/wrappedh1 &

# Set the path to Oh My Zsh
export ZSH="$HOME/.oh-my-zsh"

# Set the Oh My Zsh theme
ZSH_THEME="agnoster"

# Set the Oh My Zsh plugins
plugins=(git zsh-autosuggestions)

# Load Oh My Zsh
source $ZSH/oh-my-zsh.sh

export WLR_NO_HARDWARE_CURSORS=1
pokemon-colorscripts -r
export PATH=$PATH:~/my-scripts

# Set the Starship prompt
eval "$(starship init zsh)"

export PATH=$PATH: ~/.spicetify
