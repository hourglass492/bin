
for i in $(cat Install_list.txt); do
	echo "installing $i"
	yes | sudo apt-get install $i
done


# install motivate
mkdir -p ~/.bin
pushd ~/.bin
git clone https://github.com/mubaris/motivate.git
cd motivate/motivate
sudo ./install.sh
popd


python3 -m pip install --upgrade pip
python3 -m pip install --upgrade pwntools
