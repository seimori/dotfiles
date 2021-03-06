#   Load version control information
    autoload -Uz vcs_info
    precmd() { vcs_info }
#   Format the vcs_info_msg_0_ variable
    zstyle ':vcs_info:git:*' formats '%F{4}%b%f'


#   Prompt
    setopt PROMPT_SUBST
    PS1='%F{blue}%*%f %~ %F{red}$%f '
    RPROMPT=%S\$vcs_info_msg_0_%s
#   Vi-mode options
    bindkey -v
    bindkey -M viins 'jk' vi-cmd-mode
    export KEYTIMEOUT=8
#   Edit command line
    autoload -U edit-command-line
    zle -N edit-command-line
    bindkey -M vicmd v edit-command-line

#   Aliases
	alias vs='vim -S Session.vim'
	alias cz='vim ~/.zshrc'
	alias sz='source ~/.zshrc'
	alias cv='vim ~/.vimrc'
	alias ct='vim ~/.tmux.conf'
	alias op='wsl-open'
	alias gd='cd /mnt/c/Users/issei/Desktop'
	alias cc='gcc -g -Wall -Wextra -Werror'
	alias nrm='norminette'
	alias ga='git add'
	alias gc='git commit -am'
	alias gp='git push'
	alias gpl='git pull'
	alias ao='./a.out'
	alias val='valgrind --leak-check=yes ./a.out'
	alias 42fc='bash ~/Resources/42FileChecker/42FileChecker.sh'
	alias mysgoinfre='cd /sgoinfre/goinfre/Perso/imorimot'
	alias newmakefile='cp ~/Resources/Makefile_template/Makefile .'
	alias newlibft='cp -r ~/Resources/libft .; rm -rf libft/.git'
	alias tc='cd ~/Test_chamber'
  alias norminette='~/.norminette/norminette.rb'
	alias yarnc='BROWSER=chrome yarn start'
	
#   Exports
    export EDITOR=/usr/bin/vim
    export VISUAL=/usr/bin/vim
	#export VIMRUNTIME=/usr/share/vim/vim80
	
    export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2; exit;}'):0.0
#   Auto start tmux
#    if [[ "$TERM" != "screen" ]] &&
#            [[ "$SSH_CONNECTION" == "" ]]; then
#    # Attempt to discover a detached session and
#    # it, else create a new session
#    WHOAMI=$(whoami)
#    if tmux has-session -t $WHOAMI 2>/dev/null; then
#        tmux -2 attach-session -t $WHOAMI
#    else
#        tmux -2 new-session -s $WHOAMI
#    fi
#    fi
