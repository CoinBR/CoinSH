i="sudo apt get update && sudo apt-get install"

# Install dependencies:

	which pip3 || $i python3-pip &&

	sudo python3 -m pip install --upgrade pip setuptools wheel &&
	sudo python3 -m pip install tqdm &&
	sudo python3 -m pip install --user --upgrade twine &&


# Compile Package:
	python3 setup.py bdist_wheel