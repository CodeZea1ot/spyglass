Output ./assets/vhs/gifs/line_delay.gif

Set FontSize 18
Set Width 1280
Set Height 600
Set WindowBar Colorful

Type "spyglass -d 1 ./assets/mock-data/logfile_small.txt"
Sleep 2s
Enter
Sleep 12s
Type "cat ./assets/mock-data/logfile_small.txt | spyglass -d 1"
Sleep 2s
Enter
Sleep 12s

Sleep 2s
