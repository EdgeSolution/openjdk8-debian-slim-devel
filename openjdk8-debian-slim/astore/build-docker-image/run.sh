#!/bin/sh

i=1
while [ $i -le 5 ]
do
	echo $i
	result=`netstat -anp |grep :80|grep apache2|wc -l`
	i=`expr $i + 1`
	if [ $result -gt 0 ]
	then
		echo "apache running">>/root/adv/apache.log
		break
	else
		/etc/init.d/apache2 restart
		echo "apache run again">>/root/adv/apache.log
		sleep 2s
		continue
	fi
done

cd /root/adv/
java -jar /root/adv/astore.jar

