source /usr/share/cachyos-fish-config/cachyos-config.fish
source "$HOME/.cargo/env.fish"
set -x LANG en_US.UTF-8
set -x LC_ALL en_US.UTF-8
# overwrite greeting
# potentially disabling fastfetch
#function fish_greeting
#    # smth smth
#end
export EDITOR=nvim
function mkcd
       mkdir -p $argv[1]
       and cd $argv[1]
end

#function tmux
#    command tmux -u $argv
#end

#function btop
#    command btop --force-utf $argv
#end


function tenv
	export $argv[1]=$argv[2]
	tmux set-env -g $argv[1] "$argv[2]"
end

# sudo path fix
alias sudo="sudo env PATH=\"$PATH\" $argv"

alias mic="wpctl set-volume @DEFAULT_AUDIO_SOURCE@ $argv"

# bloodhound
alias bloodhound="docker compose -f /home/shadow/.config/bloodhound/docker-compose.yml up -d"
alias bloodhound-stop="docker compose -f /home/shadow/.config/bloodhound/docker-compose.yml stop"
alias bloodhound-python="bloodhound-ce-python"
