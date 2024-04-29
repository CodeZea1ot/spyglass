Output ./assets/vhs/gifs/smart-color-formatting.gif

Set FontSize 18
Set Width 1280
Set Height 600
Set WindowBar Colorful

Type "spyglass -c -K ./assets/mock-data/logfile_color_test.txt"
Sleep 2s
Enter
Sleep 3s
Type "cat ./assets/mock-data/logfile_color_test.txt | spyglass -c -K"
Sleep 2s
Enter

Sleep 5s