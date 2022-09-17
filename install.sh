sudo apt update && rm ./update.log
sudo apt upgrade && rm ./upgrade.log


for i in $(cat Install_list.txt); do
	echo "installing $i"
	(yes | sudo apt-get install $i 2>&1 > ./${i}_install.log && rm ./${i}_install.log) || echo "failed to install $i" 
done


# install motivate
mkdir -p ~/.bin || true
pushd ~/.bin || true
git clone https://github.com/mubaris/motivate.git 2>&1 >./install.log && rm ./install.log || echo "failed to git motivate"
cd motivate/motivate || true
sudo ./install.sh  2>&1 >./install.log && rm ./install.log || echo "failed to install motivate"
popd


python3 -m pip install --upgrade pip 2>&1 >./pip_install.log && rm pip_install.log || echo "Failed to install and upgrade pip"
python3 -m pwntools install --upgrade pwntools  2>&1 >./pwntools_install.log && rm pwntools_install.log || echo "Failed to install pwntools"



pushd ~/bin





pushd ~/bin

./import_rc.sh

popd


pushd ~/.bin
git clone https://github.com/pwndbg/pwndbg 2>&1 >pwndbg_install.log && rm pwndbg_install.log || echo "unable to git pwndbg"
cd pwndbg
./setup.sh 2>&1 >pwndbg_install.log && rm pwndbg_install.log || echo "unable to install pwndbg"
popd
