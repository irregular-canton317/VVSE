#!/bin/sh
f=$1;E=$'\e';t=$(stty -g);stty raw -echo;trap 'stty ${E}[?25h $t' 0;l=$(cat "$f" 2>/dev/null);r="";v=1;printf "${E}[?25l"
while :;do
[ $v ]&&z="${E}[32mWelcome! Keybinds: fckaf.de/gZO${E}[0m"||z="$l|$r"
[ "$s" ]&&z=$(printf %s "$z"|sed "s/$s/${E}[43;30m&${E}[0m/g")
printf "${E}[H${E}[J$(printf %s "$z"|sed 's/$/\r/')"
k=$(dd bs=1 count=1 2>/dev/null)
[ "$k" ]&&v=;case "$k" in
$'\x18')exit;;
$'\x0f')stty $t;printf "${E}[99H${E}[2KOp: ";read f;l=$(cat "$f" 2>/dev/null);r="";stty raw -echo;;
$'\x15')l="";r="";;
$'\x06')stty $t;printf "${E}[99H${E}[2KFd: ";read s;stty raw -echo;;
$'\x13')stty $t;[ ! "$f" ]&&{ printf "${E}[99H${E}[2KSv as: ";read f;};printf %s "$l$r">"$f";stty raw -echo;;
$'\x7f')l="${l%?}";;
$'\r')l="$l
";;
$E)d=$(dd bs=1 count=2 2>/dev/null)
case "$d" in
'[D')r="${l#${l%?}}$r";l="${l%?}";;
'[C')l="$l${r%"${r#?}"}";r="${r#?}";;
'[A')h="${l%$'\n'*}";[ "$h" != "$l" ]&&r="${l#$h}$r" l="$h";;
'[B')h="${r#*$'\n'}";[ "$h" != "$r" ]&&l="$l${r%$h}" r="$h";;
*)s="";;esac;;
*)l="$l$k";;
esac;done
