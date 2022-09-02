pushd ~/bin

while read l
do
yes | sudo apt install $l || echo "Could not install $l"
done < Install_list.txt

popd

mkdir ~/.bin

pushd ~./bin

git clone https://github.com/mubaris/motivate.git
cd motivate/motivate
sudo ./install.sh
source ~/.bashrc
popd
