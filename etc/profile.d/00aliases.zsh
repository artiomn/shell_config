. /etc/profile.d/00aliases.sh

# Suffix aliases for Zsh.

if [[ -n $DISPLAY ]]; then
   alias -s {jpg,png,svg,xpm,bmp,jpeg,gif}=geeqie
   alias -s {pdf,djvu,chm,fb2,ps}=okular
   alias -s {avi,mp4,mpeg,mpg,mov,m2v,flv}=vlc
   alias -s {ogg,mp3,wav}=mpg321
   alias -s {odt,ods,doc,sxw,rtf}=libreoffice
   # alias -s {pdf}=apvlv
else
   alias -s {odt,ods,doc,sxw,xls,doc,rtf}=vim
   alias -s {png,gif,jpg,jpeg}="fbi -a"
   alias -s {pdf}=vim
fi

[[ -z $DISPLAY ]] && {
}

alias -s exe=wine

# Suffix aliases for HTML pages and WEB-sites.
autoload -U pick-web-browser
alias -s {html,htm,xhtml,ru,org,net,com}=pick-web-browser

alias -g D="DISPLAY=:0.0"

