while true; do
#echo  $date 'I can do that all day'
echo  $(date +%H:%M:%S) $(cat /proc/loadavg)
sleep 5
done
