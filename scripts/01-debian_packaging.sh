realname()
{
	getent passwd `whoami` | cut -d ':' -f 5 | cut -d ',' -f 1
}
export DEBFULLNAME=`realname`
export DEBEMAIL=`cat ~/.debemail`
