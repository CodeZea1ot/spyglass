Output ./assets/vhs/gifs/keep_all_groups.gif

Set FontSize 18
Set Width 1280
Set Height 600
Set WindowBar Colorful

Type "spyglass -K ./assets/mock-data/logfile_small.txt"
Sleep 2s
Enter
Sleep 3s
Type "cat ./assets/mock-data/logfile_small.txt | spyglass -K"
Sleep 2s
Enter

Sleep 5s