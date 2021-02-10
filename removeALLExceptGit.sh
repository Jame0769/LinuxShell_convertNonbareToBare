removeALLExceptGit(){

	echo "*******************************"
	echo $1
	
	cd $1
	shopt -s extglob
	rm -fr !(hooks|info|logs|objects|refs|config|description|HEAD)
	shopt -u extglob
	cd ..
}


removeALLExceptGit MF18001_HMI
