#!/bin/bash
geniefolder="/app/geniesys";
if [ ! -d "$geniefolder" ] ; then
    git clone https://github.com/irusri/geniesys.git $geniefolder
    echo "cloned"
else
    cd "$geniefolder"
    git pull 
    echo "pulled"
fi

# Clone geniesys
#git clone https://github.com/irusri/geniesys.git /app/geniesys