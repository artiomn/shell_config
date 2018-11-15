#
# Extented file type identifucation command.
#

_FILE="$(which file)"
_TRID="/opt/trid/trid"
_JHOVE="$(which jhove)"
_DISKTYPE="$(which disktype)"

alias trid="$_TRID"

filetype()
# $1 - file to check.
{
   [ -z "$1" ] && { echo -e "Error: filename didn't given!\nSyntax: filetype <filename>" >&2; return 1; }

   "$_FILE" -s -L "$1"
   "$_TRID" "$1"
   "$_JHOVE" "$1"
   "$_DISKTYPE" "$1"
}
