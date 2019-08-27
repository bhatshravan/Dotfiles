set VISUAL mousepad
export VISUAL EDITOR mousepad
export EDITOR
set PATH /home/shravan/.local/bin $PATH 

# (cat ~/.cache/wal/sequences &)
# To add support for TTYs this line can be optionally added.
# source ~/.cache/wal/colors-tty.sh

# Set prompt for bob the fish
set -g theme_display_date no
set -g theme_title_use_abbreviated_path no
set -g theme_date_format "+ %H:%M"
# set -g theme_avoid_ambiguous_glyphs yes
# set -g theme_powerline_fonts no
set -g theme_nerd_fonts yes
set -g theme_show_exit_status no
set -g theme_title_display_process yes
set -g theme_title_display_path no
set -g theme_display_git yes
set -g fish_prompt_pwd_dir_length 5
set -g theme_project_dir_length 5
set -g theme_newline_cursor yes
set -g theme_newline_prompt '$ '

set -g theme_color_scheme dark

alias fabrikc="cd /home/shravan/Programs/Node/Fabrik/vark-client/vark-client/"
alias fabriks='cd /home/shravan/Programs/Node/Fabrik/vark-serv/vark-server2/'

alias nps='npm start'

alias configcompton='micro ~/.config/compton.conf'

function fish_user_key_bindings
    bind \cl ranger
end

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias l="ls -l"
alias t='touch'
alias r="ranger"
alias g="gotop"
alias e="exit"
alias shrdownload="wget -mkEp"
alias configfish="cd ~/.config/fish"
alias configfish2='mousepad ~/.config/fish/config.fish </dev/null >/dev/null 2>&1 & exit | bash'
alias shrp="cd ~/Program"

alias warmLaptop="stress --cpu 8 --io 4 --vm 2 --vm-bytes 128M --timeout 120s"

alias fixunix='find . -type f -print0 | xargs -0 dos2unix'

alias randomhtml='/home/shravan/Program/bash/file-html.sh'

alias pyenv1="source /home/shravan/Programs/Python/virtual/env/bin/activate.fish"


alias sga="git add *"
alias sgc="git commit -m"
alias sgp="git push"
alias sgpu="git pull"
alias sgrm="git rm -r --cached"
alias shrhelp="less ~/.config/fish/config.fish"
alias m="micro"

alias configLibinput='cd /etc/X11/xorg.conf.d'
alias configi3='nohup mousepad ~/.config/i3/config </dev/null >/dev/null 2>&1 & '
alias configpoly='cd  ~/.config/polybar'
alias configpoly2='mousepad ~/.config/polybar/bar.sh </dev/null >/dev/null 2>&1 & exit'
alias configpoly3='mousepad ~/.config/polybar/config-pink.ini </dev/null >/dev/null 2>&1 & exit | bash'
alias configrofi='cd ~/.config/rofi </dev/null >/dev/null 2>&1 &'
alias configScripts='cd ~/bin'

alias configbash='mousepad .bashrc'
alias vim='nvim'

alias dbp='cd /home/shravan/Program/Project/DBMS'
alias shraliens2='sudo sysctl -w fs.inotify.max_user_instances=1024;  sudo sysctl -w fs.inotify.max_user_watches=12288;'
alias shraliens='cd /home/shravan/Program/react-apps/aliens/aliens'

alias javas='java -classpath .'

alias shrcrypt='/home/shravan/Program/bash/nnms.sh'
alias shrsubs='python /home/shravan/Programs/Python/SubtitleDownloader/subtitle-downloader/subtitle-downloader/subtitle_downloader.py'
alias shrhotspot='sudo create_ap -m nat wlo1 enp1s0 CodeBreaker shravan123'
#alias shrhelp='/home/shravan/Program/bash/shrhelp.sh'
alias shryt='python /home/shravan/.local/bin/mpsyt'
alias 'cd..'='cd ..'
alias f='fish'
alias xflux2='xflux -l 12.9716 -g 77.5946'
alias xflux3='xflux -l 41.8781 -g 87.6298'

alias notes='cd /home/shravan/Notes/'

alias download='aria2c -x 5 -d /home/shravan/Videos/ '


alias sqlstart='systemctl start mariadb.service'
alias sqlstop='systemctl stop mariadb.service'
alias sqlrestart='systemctl restart mariadb.service'
alias sqll='mysql -u root -p'

alias mongostart='systemctl start mongodb.service'
alias mongostop='systemctl stop mongodb.service'

alias hiscw='cat "/dev/null" > ~/.histfile'

alias ebook='cat ~/notes/ebook.txt'


alias sublime='nohup /opt/sublime_text/sublime_text </dev/null >/dev/null 2>&1 & exit | bash'
alias android='nohup /home/shravan/Software/android-studio/bin/studio.sh </dev/null >/dev/null 2>&1 &'

alias ftpstart='systemctl start bftpd'
alias ftpstop='systemctl stop bftpd'

alias animes='python /home/shravan/Program/python/anime_downloader/main.py'
alias upstream='git fetch upstream ; git checkout master;git merge upstream/master;git push'


alias gccc='echo "g++ 1.c -o a -lglut -lGLU -lGL"'

alias gcp='gcloud compute --project "cogent-treat-235415" ssh --zone "asia-south1-b" "instance-2"'

function sudo --description "Replacement for Bash 'sudo !!' command to run last command using sudo."
    if test "$argv" = !!
    eval command sudo $history[1]
else
    command sudo $argv
    end
end