Output ./assets/vhs/gifs/main_demo.gif

Require echo

Set FontSize 18
Set Width 1280
Set Height 600
Set WindowBar Colorful

Type "cat ./assets/mock-data/dialogues/before_read_stdin.txt" Sleep 2s Enter Sleep 4s
Type "cat ./assets/mock-data/logfile.txt | spyglass" Sleep 2s  Enter Sleep 4s
Type "cat ./assets/mock-data/dialogues/before_read_file.txt" Sleep 2s Enter Sleep 4s
Type "spyglass ./assets/mock-data/logfile.txt" Sleep 2s  Enter

Sleep 5s
