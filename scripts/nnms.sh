while true
do
	ls ~/Program/bash/NMS |sort -R |tail -$N |while read file; do
		cat ~/Program/bash/NMS/$file | nms -a 
		sleep 1
	done
	
done
