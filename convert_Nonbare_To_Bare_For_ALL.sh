convert_Nonbare_To_Bare(){

	echo "*******************************"
	echo $1
	
	cd $1
	mv .git ../$1.git # renaming just for clarity
	cd ..
	rm -fr $1
	cd $1.git
	git config --bool core.bare true
	cd ..
	mv $1.git $1
	attrib -s -h $1
}

convert_Nonbare_To_Bare g1
convert_Nonbare_To_Bare g2

