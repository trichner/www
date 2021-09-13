#!/bin/bash

HEADER='<!DOCTYPE html>
<html>
<head>
<title>trichner</title>
</head>
<body>'

FOOTER='</body>
</html>'


IMAGES=$(ls -1 *.gif)

echo "$HEADER"
for i in $IMAGES;do
	echo "<img src='$i'></img>"
done
echo "$FOOTER"
