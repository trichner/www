#!/bin/bash

HEADER='<!DOCTYPE html>
<html>
<head>
<title>trichner</title>
<style>
img {
    object-fit: contain;
}
body {
	font-family: monospace;
}
</style>
</head>
<body>'

FOOTER='</body>
</html>'


IMAGES=$(ls -1 *.gif *.png *.jpg)

echo "$HEADER"
echo "<h1>Thomas' Linksammelsurium</h1>"

echo "<h2>Emoticons</h2>"
echo '<pre>'
cat ./00_emoijs.txt
echo '</pre>'

echo "<h2>Sounds & Stuff</h2>"
FILES=$(ls -1 *.mp3)
echo '<ul>'
for i in $FILES;do
	echo "<li><a href='$i' target='_blank'>$i</a></li>"
done
echo '</ul>'

echo "<h2>Gifs</h2>"
for i in $IMAGES;do
	SIZE=$(identify -format '%w %h\n' "$i" | head -n  1)
	WIDTH=$(echo "$SIZE" | awk '{ print $1 }')
	HEIGHT=$(echo "$SIZE" | awk '{ print $2 }')
	echo "<a href='$i' target='_blank'><img src='$i' height='$HEIGHT' width='$WIDTH'></img></a>"
done
echo "$FOOTER"
