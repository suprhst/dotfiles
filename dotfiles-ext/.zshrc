# Lines configured by zsh-newuser-install
 HISTFILE=~/.histfile
 HISTSIZE=1000
 SAVEHIST=1000
 bindkey -v
# # End of lines configured by zsh-newuser-install
# # The following lines were added by compinstall
 zstyle :compinstall filename '/home/varun/.zshrc'
#
 autoload -Uz compinit
 compinit
#
# Prompt
 PROMPT="%F{yellow}┌─<%f%F{blue}%~%f%F{yellow}>%f"$'\n'"%F{yellow}└╼%f%F{red}⚡"





ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[red]%}[%{$fg_bold[white]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}%{$fg[red]%}] "
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}⚡%{$reset_color%}"


# #alias vim="nvim"
# alias
 alias ls='ls -lh --color=auto'
 alias dir='dir --color=auto'
 alias vdir='vdir --color=auto'
 alias grep='grep --color=auto'
 alias fgrep='fgrep --color=auto'
 alias egrep='egrep --color=auto'




# #zsh auto suggestion
 source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
 #zsh syntax color
# source /home/varun/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
 source /usr/share/fzf/completion.zsh
 source /usr/share/fzf/key-bindings.zsh
#
export FZF_DEFAULT_OPTS="
--layout=reverse
--info=inline
--height=80%
--multi
--preview-window=:hidden
--preview '([[ -f {} ]] && (bat --style=numbers --color=always {} || cat {})) || ([[ -d {} ]] && (tree -C {} | less)) || echo {} 2> /dev/null | head -200'
--color='hl:148,hl+:154,pointer:032,marker:010,bg+:237,gutter:008'
--prompt='∼ ' --pointer='▶' --marker='✓'
--bind '?:toggle-preview'
--bind 'ctrl-a:select-all'
--bind 'ctrl-y:execute-silent(echo {+} | pbcopy)'
--bind 'ctrl-e:execute(echo {+} | xargs -o vim)'
--bind 'ctrl-v:execute(code {+})'
"
#
 echo " "
 echo "הכל נראה טיפשי"    
 echo " " 
