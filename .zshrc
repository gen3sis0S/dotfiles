
##############################################
##                                          ##
## ███████╗███████╗██╗  ██╗██████╗  ██████╗ ##
## ╚══███╔╝██╔════╝██║  ██║██╔══██╗██╔════╝ ##
##   ███╔╝ ███████╗███████║██████╔╝██║      ##
##  ███╔╝  ╚════██║██╔══██║██╔══██╗██║      ##
## ███████╗███████║██║  ██║██║  ██║╚██████╗ ##
## ╚══════╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝ ##
## Author: gen3sis0s                        ##
## Github: https://github.com/gen3sis0s     ##
##############################################



# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi



###############################
##  ▗▄▖ ▗▖   ▗▄▄▄▖ ▗▄▖  ▗▄▄▖ ##
## ▐▌ ▐▌▐▌     █  ▐▌ ▐▌▐▌    ##
## ▐▛▀▜▌▐▌     █  ▐▛▀▜▌ ▝▀▚▖ ##
## ▐▌ ▐▌▐▙▄▄▖▗▄█▄▖▐▌ ▐▌▗▄▄▞▘ ##
##                           ##
###############################

# Use 'bat' for syntax-highlighted file viewing instead of 'cat'
alias cat='bat'

# Clean up unused packages and cache in pacman
alias clean='sudo pacman -Rns $(pacman -Qdtq) && sudo pacman -Sc'

# List all files, including hidden, with directories first
alias la='lsd -a --group-dirs=first'

# List files in long format with human-readable sizes and directories first
alias ll='lsd -lh --group-dirs=first'

# List all files in long format with human-readable sizes and directories first
alias lla='lsd -lha --group-dirs=first'

# Use 'lsd' to list files instead of 'ls' with directories first
alias ls='lsd --group-dirs=first'

# Start netcat listener on a specified port
alias ncx='nc -lnvp'

# Limit ping to 4 packets
alias ping='ping -c 4'

# Start a simple HTTP server using python
alias pserver='python -m http.server'

# Use 'gtop' for a modern, graphical process viewer instead of 'top'
alias top='gtop'

# Update system packages and database (for locate command)
alias update='sudo pacman -Syu && sudo updatedb'



#################################
## ▗▄▄▖ ▗▄▄▄▖▗▖  ▗▖▗▄▄▄   ▗▄▄▖ ##
## ▐▌ ▐▌  █  ▐▛▚▖▐▌▐▌  █ ▐▌    ##
## ▐▛▀▚▖  █  ▐▌ ▝▜▌▐▌  █  ▝▀▚▖ ##
## ▐▙▄▞▘▗▄█▄▖▐▌  ▐▌▐▙▄▄▀ ▗▄▄▞▘ ##
##                             ## 
#################################

# Bind delete key to delete the character under the cursor
bindkey "^[[3~" delete-char

# Bind End key to move cursor to end of the line
bindkey "^[[F"  end-of-line

# Bind Home key to move cursor to the beggining of the line
bindkey "^[[H"  beginning-of-line



########################################
## ▗▖ ▗▖▗▄▄▄▖ ▗▄▄▖▗▄▄▄▖▗▄▖ ▗▄▄▖▗▖  ▗▖ ##
## ▐▌ ▐▌  █  ▐▌     █ ▐▌ ▐▌▐▌ ▐▌▝▚▞▘  ##
## ▐▛▀▜▌  █   ▝▀▚▖  █ ▐▌ ▐▌▐▛▀▚▖ ▐▌   ##
## ▐▌ ▐▌▗▄█▄▖▗▄▄▞▘  █ ▝▚▄▞▘▐▌ ▐▌ ▐▌   ##
##                                    ##
########################################

# Saves duplicates only if they are not consecutive
HISTDUP=recent

# File where command history is saved
HISTFILE=~/.zsh_history

# Number of commands to remember in the current session
HISTSIZE=5000

# Number of commands to save in the history file (HISTFILE)
SAVEHIST=5000

# Keep previous command history when the shell is closed and reopened
# (Avoids that the HISTFILE is overwritten with only the current session history)
setopt appendhistory

# Prevents showing duplicate commands when searching through history
setopt hist_find_no_dups

# Ignore duplicate commands in the history
setopt hist_ignore_all_dups

# Ignore commands that start with a space when saving to history (in-memory)
setopt hist_ignore_space

# Do not save duplicates to the history file (HISTFILE)
setopt hist_save_no_dups

# Share command history (in-memory) across all ZSH sessions
setopt sharehistory



########################################################################
## ▗▖  ▗▖▗▄▄▄▖ ▗▄▄▖ ▗▄▄▖▗▄▄▄▖▗▖   ▗▖    ▗▄▖ ▗▖  ▗▖▗▄▄▄▖ ▗▄▖ ▗▖ ▗▖ ▗▄▄▖ ##
## ▐▛▚▞▜▌  █  ▐▌   ▐▌   ▐▌   ▐▌   ▐▌   ▐▌ ▐▌▐▛▚▖▐▌▐▌   ▐▌ ▐▌▐▌ ▐▌▐▌    ##
## ▐▌  ▐▌  █   ▝▀▚▖▐▌   ▐▛▀▀▘▐▌   ▐▌   ▐▛▀▜▌▐▌ ▝▜▌▐▛▀▀▘▐▌ ▐▌▐▌ ▐▌ ▝▀▚▖ ##
## ▐▌  ▐▌▗▄█▄▖▗▄▄▞▘▝▚▄▄▖▐▙▄▄▖▐▙▄▄▖▐▙▄▄▖▐▌ ▐▌▐▌  ▐▌▐▙▄▄▖▝▚▄▞▘▝▚▄▞▘▗▄▄▞▘ ##
##                                                                     ## 
########################################################################

# To customize prompt, run 'p10k configure' or edit ~/.p10k.zsh
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source ~/powerlevel10k/powerlevel10k.zsh-theme

# Prevents Java AWT windows from being reparented
export _JAVA_AWT_WM_NONREPARENTING=1



##########################################
## ▗▄▄▖ ▗▖   ▗▖ ▗▖ ▗▄▄▖▗▄▄▄▖▗▖  ▗▖ ▗▄▄▖ ##
## ▐▌ ▐▌▐▌   ▐▌ ▐▌▐▌     █  ▐▛▚▖▐▌▐▌    ##
## ▐▛▀▘ ▐▌   ▐▌ ▐▌▐▌▝▜▌  █  ▐▌ ▝▜▌ ▝▀▚▖ ##
## ▐▌   ▐▙▄▄▖▝▚▄▞▘▝▚▄▞▘▗▄█▄▖▐▌  ▐▌▗▄▄▞▘ ##
##                                      ##
##########################################

# Suggests commands as you type based on history
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Plugin to easily run commands with sudo
source /usr/share/zsh/plugins/zsh-sudo/sudo.plugin.zsh

# Highlights command syntax for easier readability
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh



###################################################
##▗▖  ▗▖ ▗▄▖ ▗▄▄▖ ▗▄▄▄▖ ▗▄▖ ▗▄▄▖ ▗▖   ▗▄▄▄▖ ▗▄▄▖ ##
##▐▌  ▐▌▐▌ ▐▌▐▌ ▐▌  █  ▐▌ ▐▌▐▌ ▐▌▐▌   ▐▌   ▐▌    ##
##▐▌  ▐▌▐▛▀▜▌▐▛▀▚▖  █  ▐▛▀▜▌▐▛▀▚▖▐▌   ▐▛▀▀▘ ▝▀▚▖ ##
## ▝▚▞▘ ▐▌ ▐▌▐▌ ▐▌▗▄█▄▖▐▌ ▐▌▐▙▄▞▘▐▙▄▄▖▐▙▄▄▖▗▄▄▞▘ ##
##                                               ##
###################################################

export BROWSER='firefox'
export EDITOR='nvim'
export HISTORY_IGNORE="(cd|cd -|cd ..|exit|history|ls|pwd|reboot|sudo reboot now|whoami|)"
export PATH="$PATH"
export SUDO_PROMPT=' Enter password to run command as root [%u]: '


