#!/bin/sh
t=$(stty -g);stty raw -echo;p=printf;E=$($p '\033');N='
'
while :;do
$p "${E}[H${E}[J$l|$r"|sed 's/$/\r/'
k=$(dd bs=1 count=1 2>/dev/null)
case $k in
$($p '\030'))stty $t;exit;;
$($p '\017'))stty $t;read f;l=$(cat "$f");r="";stty raw -echo;;
$($p '\023'))stty $t;read n;$p %s "$l$r">"${n:-$f}";stty raw -echo;;
$($p '\177'))l=${l%?};;
$($p '\r'));;
$E)d=$(dd bs=1 count=2 2>/dev/null)
case $d in
'[A')x=${l%$N*};r=${l#$x}$r;l=$x;;
'[B')[ "$r" ]&&{ x=${r#*$N};l=$l${r%"$x"};r=$x; }||l=$l$N;;
'[D')r=${l#${l%?}}$r;l=${l%?};;
'[C')l=$l${r%${r#?}};r=${r#?};;
esac;;
*)l=$l$k;;
esac;done
