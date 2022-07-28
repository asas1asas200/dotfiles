wallpath=~/Pictures/wallpapers

interval=5m

while true
do
	killall swaybg
	swaybg -i "$wallpath/"$(ls "$wallpath" | shuf -n1) -m fill &
	sleep $interval
done
