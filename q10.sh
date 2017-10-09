#/bin/bash
total=`cat /etc/passwd | wc -l`
cur_log=`who | wc -l`


echo " $cur_log OUT OF $total USERS ARE ONLINE RIGHT NOW"
