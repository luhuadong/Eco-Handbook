#!/bin/bash -e

target=~/workspace/Website/wp-zerotogether/docs

rm -r ${target}
cp -r build/html ${target}

echo "done!"
exit 0
