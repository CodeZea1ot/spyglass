Output ./assets/vhs/gifs/group_delay.gif

Set FontSize 18
Set Width 1280
Set Height 600
Set WindowBar Colorful

Type "spyglass -D 2 ./assets/mock-data/logfile_small.txt"
Sleep 2s
Enter
Sleep 6s
Type "cat ./assets/mock-data/logfile_small.txt | spyglass -D 2"
Sleep 2s
Enter

Sleep 8s