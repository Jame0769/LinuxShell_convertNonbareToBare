read -e -p "input repository(dir) name: " repo
cd $repo
mv .git ../$repo.git # renaming just for clarity
cd ..
rm -fr $repo
cd $repo.git
git config --bool core.bare true
cd ..
mv $repo.git $repo
attrib -s -h $repo