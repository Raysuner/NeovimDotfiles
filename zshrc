alias qq="cd .deepinwine/Deepin-TIM/dosdevices/c:/users/raysuner/My\ Documents/Tencent\ Files/1669232805/FileRecv/"

export PATH="/home/raysuner/Anaconda/bin:$PATH" 
export GOROOT="/usr/lib/go-1.13"
export GOPATH="/home/raysuner/LetCode/GoLangProjects"
export PATH=$PATH:$GOROOT/bin
# export PATH="/home/raysuner/Documents/packetdrill/gtests/net/packetdrill:$PATH"

alias vimrc="vim ~/.vimrc"
alias rmswp="rm ~/.local/share/nvim/swap/*.swp"
alias cmdjson="cmake -H. -BDebug -DCMAKE_BUILD_TYPE=Debug -DCMAKE_EXPORT_COMPILE_COMMANDS=YES && ln -sf Debug/compile_commands.json ."
source "$HOME/.nvim/plugged/gruvbox/gruvbox_256palette.sh"

alias tn="tmux new -s"
alias tk="tmux kill-session -t"
alias tl="tmux ls"
alias tka="tmux ls | grep : | cut -d. -f1 | awk '{print substr($1, 0, length($1)-1)}' | xargs kill"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
ulimit -c unlimited
