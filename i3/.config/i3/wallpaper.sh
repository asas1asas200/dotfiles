path=~/Pictures/wallpapers

interval=5m

while true
do
	feh -z --bg-fill "$path"
	sleep $interval
done
