
for i in $(cat Install_list.txt); do
	echo "installing $i"
	yes | sudo apt-get install $i
done
