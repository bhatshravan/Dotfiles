
set VISUAL mousepad
export VISUAL EDITOR mousepad
export EDITOR

set -g theme_display_date no

set -g theme_title_use_abbreviated_path no
set -g theme_date_format "+ %H:%M"
set -g theme_avoid_ambiguous_glyphs yes
set -g theme_powerline_fonts no
set -g theme_nerd_fonts yes
set -g theme_show_exit_status yes
set -g default_user "firewolf"
set -g theme_color_scheme dark
set -g fish_prompt_pwd_dir_length 5
set -g theme_project_dir_length 5
set -g theme_newline_cursor yes

function fish_user_key_bindings
    bind \cl ranger
end

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias l="ls -l"
alias t='touch'
alias r="ranger"
alias e="exit"
alias shrdownload="wget -mkEp"
alias configfish="cd ~/.config/fish"
alias configfish2='mousepad ~/.config/fish/config.fish </dev/null >/dev/null 2>&1 & exit | bash'
alias shrp="cd ~/Program"

alias sga="git add *"
alias sgc="git commit -m"
alias sgp="git push"
alias sgpu="git pull"
alias sgrm="git rm -r --cached"
alias shrhelp="less ~/.config/fish/config.fish"

alias configLibinput='cd /etc/X11/xorg.conf.d'
alias configi3='nohup mousepad ~/.config/i3/config </dev/null >/dev/null 2>&1 & '
alias configpoly='cd  ~/.config/polybar'
alias configpoly2='mousepad ~/.config/polybar/bar.sh </dev/null >/dev/null 2>&1 & exit'
alias configpoly3='mousepad ~/.config/polybar/config-pink.ini </dev/null >/dev/null 2>&1 & exit | bash'
alias configrofi='cd ~/.config/rofi </dev/null >/dev/null 2>&1 &'
alias configScripts='cd ~/bin'

alias connfigbash='mousepad .bashrc'

alias dbp='cd /home/shravan/Program/Project/DBMS' 
alias shraliens2='sudo sysctl -w fs.inotify.max_user_instances=1024;  sudo sysctl -w fs.inotify.max_user_watches=12288;'
alias shraliens='cd /home/shravan/Program/react-apps/aliens/aliens'

alias javas='java -classpath .'

alias shrcrypt='/home/shravan/Program/bash/nnms.sh'
alias shrsubs='python /home/shravan/Program/python/SubtitleDownloader/subtitle-downloader/subtitle-downloader/subtitle_downloader.py'
alias shrhotspot='sudo create_ap -m nat wlp2s0 enp1s0 CodeBreaker shravan123'
#alias shrhelp='/home/shravan/Program/bash/shrhelp.sh'
alias shryt='python /home/shravan/.local/bin/mpsyt'
alias 'cd..'='cd ..'
alias f='fish'
alias xflux2='xflux -l 12.9716 -g 77.5946'
alias xflux3='xflux -l 41.8781 -g 87.6298'

alias download='aria2c -x 5 -d /home/shravan/Videos/ '
alias dl='aria2c -x 5 -d /home/shravan/Downloads/ '

alias sqlstart='systemctl start mariadb.service'
alias sqlstop='systemctl stop mariadb.service'
alias sqlrestart='systemctl restart mariadb.service'
alias sqll='mysql -u root -p'

alias hiscw='cat "/dev/null" > ~/.histfile'

alias sih='cd /home/shravan/Program/node/I-SEE-U'
alias sih2='cd /home/shravan/Program/node/I-SEE-U/web'



alias sublime='nohup /opt/sublime_text/sublime_text </dev/null >/dev/null 2>&1 & exit | bash'
alias android='nohup /home/shravan/Software/android-studio/bin/studio.sh </dev/null >/dev/null 2>&1 &'

alias ftpstart='systemctl start bftpd'
alias ftpstop='systemctl stop bftpd'

alias animes='python /home/shravan/Program/python/anime_downloader/main.py'
alias upstream='git fetch upstream ; git checkout master;git merge upstream/master;git push'