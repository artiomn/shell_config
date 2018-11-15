#m()
# Most or less wrapper.
#{
#$LESSPIPE $*|
#   for i in $*; do
#      [ ! -r "$i" ] && { echo "$i - not a readable file!" >&2 ; return 1; }
#   done
#   BUF="$(cat $*|enconv)"

#   echo "$BUF"|pager
#|pager
#}

#export PAGER="most"

#alias m="most"

#eval $(lesspipe)

