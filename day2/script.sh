#!/bin/bash

read -p "folder name input: "  folderName

# create folder of given name
mkdir $folderName

# create file and write it in something
for i in 1 2 3 4
do
  echo "hii...This is $folderName$i.txt file" >> ${folderName}/${folderName}$i.txt
done

# cretae zip file of created folder
zip -r $folderName.zip $folderName

# reverse the given folder name
len=`echo $folderName | wc -c`
len=`expr $len - 1`
rev=""
while test $len -gt 0
do
rev1=`echo $folderName | cut -c$len`
rev=$rev$rev1
len=`expr $len - 1`
done

#create another folder with reverse name of given folder name.
mkdir $rev

# unzip
unzip $folderName.zip -d $rev

myDir=`pwd`

# move files
mv $myDir/$rev/$folderName/* $myDir/$rev

# delete unnecesary files and directory.
rm -rf $folderName $folderName.zip $rev/$folderName

# dispaly all file contents in directory.
for file in $myDir/$rev/*;
do
    echo `cat $file`
done