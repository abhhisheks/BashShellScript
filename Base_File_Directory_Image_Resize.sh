#!/bin/bash
#echo "Hello World"

mkdir temporary
echo "Directory Created"
W=`identify temporary/123.jpeg | cut -f 3 -d " " | sed s/x.*//` #width
H=`identify temporary/123.jpeg | cut -f 3 -d " " | sed s/.*x//` #height
echo $W
echo $H
if  [ H > 150 ] && [ W > 150 ]; then
   #sudo apt-get install imagemagick(imagemagick is used for this operation)
   #Below command Decreases image size
   convert temporary/123.jpeg -resize 150x150 temporary/123_resize.jpeg
   #Below command is used to compress the image
   convert temporary/123.jpeg -quality 95 temporary/123_compress.jpeg
   #Below command is used to convert image from jpeg to png
   convert temporary/123.jpeg temporary/123_format.png
   #Below command is used to rotate an image
   convert temporary/123.jpeg -rotate 90 temporary/123_format.png
   #To copy original image
   convert -quality 100 -normalize temporary/123.jpeg 117_norm.png
   #Resize to 250x250  
   convert -quality 100 -resize 250  temporary/123.jpeg 117_resize.png
   echo "conversion done"
fi
