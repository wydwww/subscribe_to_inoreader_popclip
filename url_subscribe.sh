#!/bin/bash
inoreader="https://www.inoreader.com/bookmarklet/subscribe/"
# from https://github.com/pilotmoon/PopClip-Extensions/tree/master/source/URLEncode
url_encoded="$(echo -n "$POPCLIP_TEXT" | perl -pe's/([^-_.~A-Za-z0-9])/sprintf("%%%02X", ord($1))/seg')" 
open "$inoreader$url_encoded"