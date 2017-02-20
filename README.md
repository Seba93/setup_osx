# Setup OSX(Sierra) with develop tools
***
## 1. Requirements
* macOS Sierra (10.12)
* ruby (the script need ruby path: _/usr/bin/ruby_ for execute scripts)
* Xcode (optional)

## 2. Install Xcode command line tools

First, you need to install xcode and command line tools with the script

	$xcode-select --install
	
This script will launch a alert box for install the package.

## 2. Run Scripts to install packages

For install homebrew, cask and all tools you need to execute the script:

	$source check_requirements.sh
	
List of all tools installed are in files:

* brew_requirements.txt 
* cask_requirements.txt
* pip3_requirements.txt (need sudo permissions)

## 3. Done!
