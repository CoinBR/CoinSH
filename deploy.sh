sudo echo "Lets pack the project before deploying it..."

cd $localPath &&
bash ./pack.sh &&
sudo python3 -m twine upload dist/*