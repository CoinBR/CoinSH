localPath=$PWD
i="sudo apt get update && sudo apt-get install"

cd $localPath
# Install dependencies:

	which pip3 || $i python3-pip &&

	sudo python3 -m pip install --upgrade pip setuptools wheel &&
	sudo python3 -m pip install tqdm &&
	sudo python3 -m pip install --upgrade twine &&


# Compile Package:
	python3 setup.py bdist_wheel