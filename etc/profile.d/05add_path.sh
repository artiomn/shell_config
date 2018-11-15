if [ "`id -u`" -eq 0 ]; then
:
else
   PATH="$PATH:/opt/bin"
   for i in $(/bin/ls -d1 /opt/*/bin /opt/*/*/bin /opt/*); do
      PATH="$PATH:$i"
   done

   PATH="/usr/lib/ccache:$PATH"
fi
export PATH

