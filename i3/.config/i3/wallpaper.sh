path=~/Pictures/wallpapers

interval=5m

while true
do
	feh -z --bg-scale "$path"
	sleep $interval
done
