
HOST=192.168.60.231

OID=1.3.6.1.4.1.8072.1.3.2.3.1.1.4.116.101.115.116

VAL=$(snmpget -v 2c -Ovq -c public $HOST $OID)
echo "result: ${VAL}"

OID2=1.3.6.1.4.1.8072.1.3.2.3.1.1.3.110.111.119

VAL2=$(snmpget -v 2c -Ovq -c public $HOST $OID2)
echo "now: ${VAL2}"
