
#Name:NguyenDucThang
#NSID:dun329
#ID:11275930
#Instructor: Dr. Mark Eramian
#CMPT214-01



#!/bin/bash

# Main Music Genres
HIP_HOP="hip-hop"
METAL="metal"
POP="pop"
PUNK="punk"
RAP="rap"
ROCK="rock"
INDIE="indie"

# array of special music
SPECIAL_TYPE=($HIP_HOP $METAL $POP $PUNK $RAP $ROCK $INDIE)

# save current path
CURRENT_PATH=$PWD

# move to music
cd music

# list all file
    ls
    echo "---------------------------------------------"
    echo -n "Select a genre from the above : "
    # read file name
    read fileName
    # convert file name to lowcase
    fileName=${fileName,,}
    echo "---------------------------------------------"

    # check if file name in special type

    for item in ${SPECIAL_TYPE[@]}
    do
        if [ "$item" = "$fileName" ]
        then
            cd $item

            ls
            echo "---------------------------------------------"
            echo -n "Select a genre from the above : "
            # read file name
            read fileName
            # convert file name to lowcase
            fileName=${fileName,,}
            echo "---------------------------------------------"

            break
        fi
    done

if [ ! -d "$fileName" ]
then
    echo "$fileName not exits"
    exit 1
fi

count=0

for item in `echo $fileName`/*
do
    if [ -d $item ]
    then
        count=`expr $count + 1`
    fi
done

cd $fileName

data=$(ls)

newFile=`echo $fileName`_artists.txt

cd $CURRENT_PATH

echo $data > $newFile
#print the number of artist in sub genre
echo "${count} artists"