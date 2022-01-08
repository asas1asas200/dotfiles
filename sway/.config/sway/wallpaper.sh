wallpath=~/Pictures/wallpapers

interval=5m

while true
do
	killall swaybg
	swaybg -i $(find "$wallpath" -type f | shuf -n1) -m fill &
	sleep $interval
done
