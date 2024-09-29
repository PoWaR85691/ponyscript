#!/bin/bash

ponysay() {
	io.github.erkin.ponysay "$@"
}

PONIES_DIR="$(flatpak info -l io.github.erkin.ponysay)/files/share/ponysay/ponies/"
pinkies=(
	$( ls $PONIES_DIR | grep pinkie )
)
for i in ${!pinkies[@]}; do
	pinkies[$i]=${pinkies[$i]%%.pony}
done

nyashas=(
	'(* ^ ω ^)'	'(´ ∀ ` *)'	'(o^▽^o)' 
	'(⌒▽⌒)☆'	'ヽ(・∀・)ﾉ'	'(´｡• ω •｡`)' 
	'(o･ω･o)'	'(＠＾◡＾)'	'(^人^)' 
	'(o´▽`o)'	'( ´ ω ` )'	'(((o(*°▽°*)o)))' 
	'(´• ω •`)'	'(＾▽＾)'	'╰(▔∀▔)╯' 
	'(─‿‿─)'	'(✯◡✯)'		'(◕‿◕)' 
	'(⌒‿⌒)'		'＼(≧▽≦)／'	'(*°▽°*)'
	'٩(｡•́‿•̀｡)۶'	'(´｡• ᵕ •｡`)' '( ´ ▽ ` )' 
	'ヽ(>∀<☆)ノ'	'o(≧▽≦)o'	'＼(￣▽￣)／' 
	'(*¯︶¯*)'	'(o˘◡˘o)'	'\(★ω★)/' 
	'(╯✧▽✧)╯'	'o(>ω<)o'	'( ‾́ ◡ ‾́ )' 
	'(ﾉ´ヮ`)ﾉ*:'	'･ﾟ (๑˘︶˘๑)' '(´･ᴗ･ ` )' 
)

N=100
MSG='Ты няша'
for (( k = 0; k < $N; ++k )); do
	i=$(( $RANDOM % ${#pinkies[@]} ))
	j=$(( $RANDOM % ${#nyashas[@]} ))
	ponysay -f ${pinkies[$i]} "$MSG ${nyashas[$j]}"
done