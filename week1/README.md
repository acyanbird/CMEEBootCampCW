## This week we include 4 topics in computing.

### [UNIX and Linux](https://mulquabio.github.io/MQB/notebooks/Unix.html)

This chapter introduce basic command and build structure of this repo. 
I include `Bash_command_challenge.txt` to answer question in [Bash command challenge](https://mulquabio.github.io/MQB/notebooks/Unix.html#bash-command-challenge). Then `UnixPrac1.txt` to answer FASTA exercise. The comment inside this file explain how the script works.

### [Shell scripting](https://mulquabio.github.io/MQB/notebooks/ShellScripting.html)

This section include 5 files. I put them into `shell_scripting` subfolder of code.  
`boilerplate.sh` will output a line with new line at the begin and the end of line.  
`variables.sh` deal with variables pass by arguments, and compare different between we pass 0 argument and 2 arguments. After improve the script, numbers of parameters pass to script is checked. And an error message will print out if incorrect number of parameters are passed to script.  
`tabtocsv.sh` convert txt file into csv file by converting tab into commas. And save file by changing extension to csv.   
`CountLines.sh` checks if there is only 1 file pass into script, and then using `wc` store number of lines into NumLines variable and print it to terminal.  
`ConcatenateTwoFiles.sh` check there are three arguments pass to script, and then combine first two files content and cover them into output file.  
`tiff2png.sh` will use `imagemagick` package convert tif file to png files. By sending command like `convert 1.tif 1.png`. It scan every tif image name, send them to for loop and convert them seperately.