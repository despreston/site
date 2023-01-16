#!/bin/sh
#
# Generates a new post using a template.

FILE=$1
TITLE=$2

cat > $FILE <<- EOM
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>$TITLE</title>
    <link rel="stylesheet" href="../style.css">
</head>
<body>
  <main>
    <h1>$TITLE</h1>
    <time>`date +'%B %d, %Y'`</time>
  </main>
  <a id="more-posts" href="../index.html">More posts</a>
</body>
</html>
EOM
