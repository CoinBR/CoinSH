localPath=$PWD
i="sudo apt get update && sudo apt-get install"

cd $localPath &&
bash ./pack.sh &&
sudo python3 -m twine upload dist/*