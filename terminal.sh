#!/usr/bin/sh

cd hello_scripts

# This Code will Not Run if the profiles are not set correctly
# Este código não irá rodar se os perfis não forem criados corretamente
# Este código no se ejecutará si los perfiles no se crean correctamente

#Python Profile
# Bg = #1A1F6E
# Fg = #FFFFFF
# E2 =  #FFFC00

#Bash Profile
# BG = #000000
# FG = #FFFFFF

#C Profile
# BG = #A8B9CC
# FG = #171421

#Dart Profile
# BG = #0175C2
# FG = #FFFFFF

#Java Profile
# BG = #AA9000
# FG = #FFFFFF
# E2 = #FF0000
# E4 = #FFFFFF

#Javascript Profile
# BG = #339933
# FG = #FFFFFF

#PHP Profile
# BG = #283174
# FG = #B913C9

#Ruby Profile
# BG = #682323
# FG = #FFFFFF
# E2 = #FFFFFF

TIME=1 # Controls time between window openings

# Round 1
gnome-terminal --window --geometry=95x23+0+0 --wait --profile=python -- bash -c "python3 ./script.py ; sleep 1" &
sleep $TIME
gnome-terminal --window --geometry=95x23+960+0 --wait --profile=ruby -- bash -c "ruby ./hello.rb ; sleep 1" &
sleep $TIME
gnome-terminal --window --geometry=95x22+0+570 --wait --profile=dart -- bash -c "dart ./script.dart ; sleep 1" &
sleep $TIME

#Round 2
gnome-terminal --window --geometry=95x22+960+570 --wait --profile=java -- bash -c "java Script ; sleep 1" &
sleep $TIME
gnome-terminal --window --geometry=95x23+0+0 --wait --profile=bash -- bash -c "./hello ; sleep 1" &
sleep $TIME
gnome-terminal --window --geometry=95x23+960+0 --wait --profile=php -- bash -c "php -n ./script.php ; sleep 1" &
sleep $TIME
gnome-terminal --window --geometry=95x22+0+570 --wait --profile=C -- bash -c "bash ./hello.sh ; sleep 1" &
sleep $TIME
gnome-terminal --window --geometry=95x22+960+570 --wait --profile=Javascript -- bash -c "node ./script.js ; sleep 1" &
sleep $TIME

#Round 3
gnome-terminal --window --geometry=190x45+0+0 --wait -- bash -c "gnome-terminal --tab -- bash -c './hello; sleep 1'; sleep 5" &
sleep $TIME
gnome-terminal --window --geometry=190x45+0+0 --wait -- bash -c "bash ./hello.sh; sleep 1" &
sleep $TIME

# Final, please like and subscribe

gnome-terminal --window --geometry=190x45+0+0 --wait -- bash -c "bash ../split_window.sh; sleep 1" &
sleep $TIME
killall gnome-terminal # closes all windows
