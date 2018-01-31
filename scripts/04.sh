file=/etc/crontab
md5=
md5sum='md5sum $file | awk '{print$1}''
if [ $md5sum == $md5]
	echo "File has not been modified"
else
	echo "$md5" | mail -s "Crontab was modified" root
fi
