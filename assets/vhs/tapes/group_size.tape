Output ./assets/vhs/gifs/group_size.gif

Set FontSize 18
Set Width 1280
Set Height 600
Set WindowBar Colorful

Type "spyglass -n 4 ./assets/mock-data/logfile_small.txt"
Sleep 2s
Enter
Sleep 3s
Type "cat ./assets/mock-data/logfile_small.txt | spyglass -n 2"
Sleep 2s
Enter

Sleep 5s