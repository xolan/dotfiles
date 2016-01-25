Clock (){
        DATE=$(date)

        echo -n "$DATE"
}
#define battery percent
Charge() {
  batCap=/sys/class/power_supply/BAT0/capacity
  Realbat=$(cat $batCap)
  if [[ $Realbat -le "100" && ($Realbat -gt "80") ]]; then
    echo -e ""
fi
if [[ $Realbat -le "80" && ( $Realbat -gt "60" ) ]]; then
  echo -e ""
fi
if [[ $Realbat -le "60" && ( $Realbat -gt "40" ) ]]; then
  echo -e ""
fi
if [[ $Realbat -le "40" && ( $Realbat -gt "20" ) ]]; then
  echo -e ""
fi
if [ $Realbat -le "20" ]; then
    echo -e ""
fi

}


Battery() {
    batStat=/sys/class/power_supply/BAT0/status

    if [ $(cat $batStat) = "Charging" ]; then
      echo ""
    fi
  }
#grabs spotify now playing
NowPlaying() {
  spotifyon=$(ps -e |grep spotify)
    if [ -z "$spotifyon" ]; then
                    echo "None playing"
                else
                    echo $(./spotify.sh)
                fi
}
Desktop() {
    currentdesktop=$(bspc query -D -d)
    if [ $currentdesktop = "I" ]; then
    echo -e "● ◯ ◯ ◯ ◯"
  fi

  if [ $currentdesktop = "II" ]; then
  echo -e "◯ ● ◯ ◯ ◯"
fi

  if [ $currentdesktop = "III" ]; then
echo -e "◯ ◯ ● ◯ ◯"
fi

  if [ $currentdesktop = "IV" ]; then
echo -e "◯ ◯ ◯ ● ◯"
fi

  if [ $currentdesktop = "V" ]; then
echo -e "◯ ◯ ◯ ◯ ●"
fi
  }

while true; do
        echo "%{l}%{F#ffffff}%{B#90000000}$(Clock) |$(Desktop) |%{c} $(NowPlaying)%{r}$(Charge)$(Battery)"
        sleep 1
done