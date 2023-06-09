while true :
do
	read -p "Search for: " searj
	read -p "Index term: " indx
	sed -i.bak 's/'"$searj"'/&\\\idx{'"$indx"'}/g' *
done
