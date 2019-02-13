localPath=$PWD
i="sudo apt get update && sudo apt-get install"


# Select the version to pack/upload
cd $localPath
lastVersion="$(cat version.txt)"
echo "Current version (configured in version.txt) is $lastVersion"
echo "To pack/upload the version $lastVersion, type 'y' or just enter"
echo "To pack/upload another version type the semantic version number:"
read answer
if [ "$answer" = "y" ] || [ "$answer" = "s" ] || [ "$answer" = "" ]; then
	true
else
	echo $answer > version.txt
fi	


# Install dependencies:

	which pip3 || $i python3-pip &&

	sudo python3 -m pip install --upgrade pip setuptools wheel &&
	sudo python3 -m pip install tqdm &&
	sudo python3 -m pip install --upgrade twine &&


# Compile Package:
	python3 setup.py bdist_wheel