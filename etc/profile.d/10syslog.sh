syslog()
{
	PAGER=${PAGER:-/usr/bin/most}
	LOGFILE="${1:-/var/log/syslog}"
	CMD=`echo $LOGFILE|
	   sed -nue "h;s/\(^.*.gz$\)/zcat \1/;t end;s/\(.*\)/cat \1/;:end p;"`
	$CMD|/usr/bin/lwatch -i -|most
}
