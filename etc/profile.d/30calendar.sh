# Holidays show.

CALENDAR_DISABLED=true

show_cal()
{

   CAL="$(which calendar)"
   HEADER="$(echo $LANG|cut -f1 -d_)"
   case "$HEADER" in
      "ru") HEADER="Праздники:";;
      *) HEADER="Holidays: ";;
   esac

   if [ ! -z "$CAL" ]; then
	[ ! -z "$HEADER" ] && echo -e "\n$HEADER"
	"$CAL" && echo;
   fi
}

# Don't show for the root.
[ x"$(id -u)" = x0 -o -n "$CALENDAR_DISABLED" ] && return

show_cal

alias calendar="show_cal"

