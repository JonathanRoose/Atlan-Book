#!/bin/bash
while true
do
	read -p "Type:" type
	if [[ "$type" == Book ]] ; then 
		read -p "Author: " authorbook
		read -p "Year: " yearbook
		read -p "Title: " titlebook
		read -p "Publisher:" publisherbook
		titleshort=$(echo "$titlebook" | tr -d ' ') 
		echo "\nocite{$titleshort}" >> nocite
		echo " " >> nocite
		echo " " >> Atlan.bib
		printf "\n@book{$titleshort,\n author = {$authorbook},\n year={$yearbook},\n title={$titlebook},\n publisher={$publisherbook}}" >> Atlan.bib 
	elif [[ "$type" == "article" ]] ; then
		read -p "Author: " authorart
		read -p "Year: "  yearart
		read -p "Title: " titleart
		read -p "Journal:" journal
		read -p "Volume: "  volume
		read -p "Number: " number
		read -p "Pages: " pages
		titleshort=$(echo "$titleart" | tr -d ' ') 
		echo "\%nocite{$titleshort}" >> nocite
		echo " " >> nocite
		echo " " >> Atlan.bib
		printf "\n@article{$titleshort,\n author = {$authorart},\n year={$yearart},\n title={$titleart},\n journal = {$journal},\n volume={$volume},\n number = {$number},\n pages = {$pages}}\n" >> Atlan.bib 
	elif [[ "$type" == "website" ]] ; then
		read -p "URL: " url
		read -p "Title: " titlesite
		read -p "Retrieved: " retrieved
		read -p "Author: " authorsite
		read -p "Year: " yearsite
		titleshort=$(echo "$titlesite" | tr -d ' ') 
		echo "\%nocite{$titleshort}" >> nocite
		echo " " >> nocite
		echo " " >> Atlan.bib
		printf "\n @article{$titleshort, \n author = {$authorsite}, \n year ={$yearsite}, \n url = {'\\'url{$url}}, \n note = {Retrieved: $retrieved}, \n title = {$titlesite}}\n" >> Atlan.bib 
	elif [[ "$type" == "quit" ]] ; then 
		break
	fi
done

