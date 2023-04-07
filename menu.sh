#!bin/bash

echo "Select a directory"

repo="{cd $REPO}"

BT="cd $REPO/basis-theory/"

dirs="$repo $BT"

select option in $dirs; do
    echo $option
done