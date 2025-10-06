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

### [Version control with Git](https://mulquabio.github.io/MQB/notebooks/Git.html)
This section create git repo to store all these files. Basic instructions about git and collaberation.

### [Scientific documents with Latex](https://mulquabio.github.io/MQB/notebooks/LaTeX.html)
This section introduce how to write document in latex format. Script is in latex subfolder of code. For `CompileLaTeX.sh` file, it run multiple steps of converting tex file to pdf. It gets the argument as file name, first get incomplete pdf and aux file. Then bibtex command produce bbl and blg file. The third and final pdflatex run then updates aux file and produce final version of pdf. Now cleaning up the files generated during the production process that are no longer needed.