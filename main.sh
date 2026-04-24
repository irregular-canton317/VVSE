#!/bin/bash
# Vextoly's Very Simple Editor - v1
# github.com/vextoly
f=$1;t=$(stty -g);stty raw -echo;trap 'stty $t' 0;l=$(cat "$f" 2>/dev/null);r="";E=$(printf '\033')
while :;do
p="$l|$r";[ "$s" ]&&p=$(printf '%s' "$p"|sed "s/$s/${E}[43;30m&${E}[0m/g")
printf "${E}[H${E}[J$(printf '%s' "$p"|sed 's/$/\r/')${E}[99H${E}[7m VVSE | ^S Save | ^O Open | ^X Exit | ^U Clr | ^F Find ${E}[m"
k=$(dd bs=1 count=1 2>/dev/null)
case "$k" in
$(printf '\030'))exit;;
$(printf '\017'))stty $t;printf "${E}[99H${E}[2KOpen: ";read f;l=$(cat "$f" 2>/dev/null);r="";stty raw -echo;;
$(printf '\025'))l="";r="";;
$(printf '\006'))stty $t;printf "${E}[99H${E}[2KFind: ";read s;stty raw -echo;;
$(printf '\023'))stty $t;printf "${E}[99H${E}[2KSave: ";read n;stty raw -echo;[ "$n" ]&&f=$n;printf %s "$l$r">"$f";;
$(printf '\177'))l="${l%?}";;
$(printf '\r'))l="$l
";;
$E)d=$(dd bs=1 count=2 2>/dev/null)
case "$d" in '[D')r="${l#${l%?}}$r";l="${l%?}";; '[C')l="$l${r%"${r#?}"}";r="${r#?}";; *)s="";; esac;;
*)l="$l$k";;
esac;done 
