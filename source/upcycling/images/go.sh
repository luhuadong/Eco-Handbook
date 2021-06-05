#!/bin/bash

for item in `ls *.webp`;
do
	img=${item%?????}
	dwebp $img.webp -o $img.png
#convert -sample 50%x50% $img.png thumb-$img.png
	convert -sample 50%x50% $img.png $img.png
done

