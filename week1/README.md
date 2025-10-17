## This week we include 4 topics in computing.

### [UNIX and Linux](https://mulquabio.github.io/MQB/notebooks/Unix.html)

This chapter introduce basic command and build structure of this repo. 
I include `Bash_command_challenge.txt` to answer question in [Bash command challenge](https://mulquabio.github.io/MQB/notebooks/Unix.html#bash-command-challenge). Then `UnixPrac1.txt` to answer FASTA exercise. The comment inside this file explain how the script works.

### [Shell scripting](https://mulquabio.github.io/MQB/notebooks/ShellScripting.html)

This section includes five files.   
`boilerplate.sh` will output a line with new line at both the beginning and the end of the line.  
`variables.sh` deals with variables passed by arguments and compares the difference between passing zero arguments and two arguments. After improving the script, the number of parameters passed to the script is checked, and an error message will print out if an incorrect number of parameters are passed.    
`MyExampleScript.sh` This script demonstrates how to use variables in shell scripting. It shows two ways to display a greeting message using the `$USER` environmental variable. `$USER` variable will read the user name.  
`tabtocsv.sh` convert txt file into csv file by changing tabs to commas. It saves the resulting file by changing the file extension to .csv.  

`CountLines.sh` checks if exactly one file is passed to the script. If so, it uses the wc -l command to store the number of lines into the NumLines variable and then prints this number to the terminal.

`ConcatenateTwoFiles.sh` checks if three arguments are passed to the script. If they are, it combines the content of the first two files and writes the combined content to the output file (the third argument).   

`tiff2png.sh` uses the imagemagick package to convert TIF files to PNG files. It does this by scanning for every TIF image, sending the filenames to a for loop, and using a command like convert 1.tif 1.png to convert them separately. Sample images is provided in imega_convert subfolder of data.  

`csvtospace.sh` This script takes a single file path as an argument. It then appends the result to a new file, prefixed with "output_" in results directory.

### [Version control with Git](https://mulquabio.github.io/MQB/notebooks/Git.html)
This section creates a Git repository to store all these files. It also teaches basic instructions on Git usage and collaboration.

### [Scientific documents with Latex](https://mulquabio.github.io/MQB/notebooks/LaTeX.html)
This section introduces how to write documents in LaTeX format. 

For the CompileLaTeX.sh file, it runs multiple steps to convert a TeX file to a PDF. It takes the file name as an argument and follows these steps:
1. The first run of pdflatex generates an incomplete PDF and an .aux file.

2. The bibtex command uses the .aux file to produce the .bbl and .blg files.

3. The third and final run of pdflatex updates the .aux file and generates the final version of the PDF.

4. Finally, the script cleans up the temporary files (like .aux, .bbl, .blg, etc.) that were generated during the production process and are no longer needed.


## Fix bug from feedback

### `tiff2png`
Wrong relative path, alrady fixed
### `CompileLaTeX.sh`
Add a if condition to check if user input exactly 1 argument (file name)
### `variables.sh`
Add a check to exam weather a and b is empty
