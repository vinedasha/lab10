
HOST=192.168.60.231

NUM=$(snmpwalk -v 2c -c public $HOST 1.3.6.1.2.1.25.4.2.1.2 | grep postgres | wc -l)
echo "procs: $NUM"

RED='\033[1;31m'
BLUE='\033[1;34m'
NOCOLOR='\033[0m'

if [ $NUM -lt 1 ]
then
	echo -e "postgres is ${RED}stopped${NOCOLOR}"
else
	echo -e "postgres is ${BLUE}running${NOCOLOR}"
fi
