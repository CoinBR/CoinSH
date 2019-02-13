localPath=$PWD

sudo echo "Lets pack the project before deploying it..."

cd $localPath &&
bash ./pack.sh &&
packageToUpload="$(ls -rt dist/ | tail -1)"
sudo python3 -m twine upload dist/$packageToUpload