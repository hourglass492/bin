
for i in $(cat Install_list.txt); do
	echo "installing $i"
	yes | sudo apt-get install $i || true
done


# install motivate
mkdir -p ~/.bin || true
pushd ~/.bin || true
git clone https://github.com/mubaris/motivate.git || true
cd motivate/motivate || true
sudo ./install.sh || true
popd


python3 -m pip install --upgrade pip || true
python3 -m pip install --upgrade pwntools || true
