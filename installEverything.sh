pushd ~/bin

while read l
do
yes | sudo apt install $l || echo "Could not install $l"
done < Install_list.txt

popd
