Output ./assets/vhs/gifs/keep_last_group.gif

Set FontSize 18
Set Width 1280
Set Height 600
Set WindowBar Colorful

Type "spyglass -k ./assets/mock-data/logfile_small.txt"
Sleep 2s
Enter
Sleep 3s
Type "cat ./assets/mock-data/logfile_small.txt | spyglass -k"
Sleep 2s
Enter

Sleep 5s