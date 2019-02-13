import setuptools
with open("README.md", "r") as fh:
    long_description = fh.read()
setuptools.setup(
    name='physh',  
    version='0.1.0',
    # scripts=['physh'] ,
    # packages=['physh'],
    author="Pedro 'Coin' Duarte",
    author_email="coinbr@gmail.com",
    description="run shell commands with this thin wrapper around the subprocess module",
    long_description=long_description,
    long_description_content_type="text/markdown",
    url="https://github.com/CoinBR/physh/tree/master",
    packages=setuptools.find_packages(),
    classifiers=[
     "Programming Language :: Python :: 3.6",
     "License :: CC0 1.0 Universal (CC0 1.0) Public Domain Dedication",
     "Operating System :: POSIX :: Linux",
    ],
 )