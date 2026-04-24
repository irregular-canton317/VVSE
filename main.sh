#!/bin/sh
f=$1;t=$(stty -g);stty raw -echo;trap 'stty $t' 0;E=$(printf '\033');p=printf
l=$(cat "$f" 2>/dev/null);r="";N="
";W="Welcome! Help: fckaf.de/gZO$N"
while :;do
z="$W$l|$r";[ "$s" ]&&z=$(echo "$z"|sed "s/$s/${E}[43;30m&${E}[0m/g")
$p "${E}[H${E}[J$(echo "$z"|sed 's/$/\r/')${E}[99H${E}[7m VVSE|^S Save|^O Open|^X Exit|^U Clr|^F Find ${E}[m"
k=$(dd bs=1 count=1 2>/dev/null);W=""
case "$k" in
$($p '\030'))exit;;
$($p '\017'))stty $t;$p "${E}[99H${E}[2KOpen: ";read f;l=$(cat "$f" 2>/dev/null);r="";stty raw -echo;;
$($p '\025'))l="";r="";;
$($p '\006'))stty $t;$p "${E}[99H${E}[2KFind: ";read s;stty raw -echo;;
$($p '\023'))stty $t;$p "${E}[99H${E}[2KSave: ";read n;stty raw -echo;[ "$n" ]&&f=$n;$p %s "$l$r">"$f";;
$($p '\177'))l="${l%?}";;
$($p '\r'))l="$l$N";;
$E)d=$(dd bs=1 count=2 2>/dev/null)
case "$d" in
'[A')x="${l%$N*}";r="${l#$x}$r";l="$x";;
'[B')x="${r#*$N}";l="$l${r%"$x"}";r="$x";;
'[D')r="${l#${l%?}}$r";l="${l%?}";;
'[C')l="$l${r%"${r#?}"}";r="${r#?}";;
esac;;
*)l="$l$k";;
esac;done
