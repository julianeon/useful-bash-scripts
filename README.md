
# Useful Bash Scripts

This is a list of useful bash scripts I made, many of which I use on a daily basis.

I have more than these, but they are unique to my situation (think appending a line to a hardcoded file name) and so aren't included.  

For the case of an example file named lsdir.sh, you can run them like this, after first making the file executable ("chmod +x lsdir.sh"):

./lsdir.sh

I use Ubuntu and so I often copy these files to ./local/bin and remove the extension, so I can run them from the command line like this:

lsdir

I'm also including many of the bash aliases I use [here](./bashrc) since they're similar in spirit to many of these scripts, which could often be rewritten as one-line aliases in a .bashrc file.

Disclaimer: many of these bash scripts were created with the assistance of ChatGPT, which excels at this kind of narrowly defined task.

Here is a guide to what these files do.

## countfiles.sh

This script counts the number of files in the current directory and prints the sum out.

Run it like this:

./countfiles.sh

## cpone.sh

This is for one you have a file like test.py and you're never going to use it again, so you don't want to check it into git, but you might want a copy of it before you make a destructive change.

Run it like this:

./cpone test.py

It will create a copy of test.py named test_1.py.

## create_image_white_text_on_blackground.sh

![white text saying 'live yout life' against black background](./result.png)

This script uses imagemagick to create an image of white text, small and centered, on a black background.

Run like this:

./create_image_white_text_on_black_backgroun.sh "Live your life."

## datecheck.sh

This script tells you all the files that were last modified on the date you provide. 

If you want to know when you last worked on a file, if you give it the day in the format month-day-year, this script will tell you. (Note: only works if you haven't edited the file again since that day).

Run it like this:

./datecheck.sh 10-19-23

It will tell all you all the files that were last modified on 10-19-23.

## downloaded_file_rename.sh

This script is for when you've downloaded a file to ~/Downloads and it has a name like 393248092349809.jpg.

Run it like this, from within your ~/Downloads directory:

./downloaded_file_rename.sh "lake_geneva"

It will rename 393248092349809.jpg to lake_geneva.jpg.


## lsdir.sh

This script shows all directories in the current directory.

Run it like this:

./lsdir.sh

## lsdirfull.sh

This script gives the full list of all directories and subdirectories in the current directory.

Run it like this: 

./lsdirfull.sh

## replacestring.sh

This script is for when you have a file like text.txt and you know you want to replace all the "!" characters with ".".

Run it like this:

./replacestring.sh "!" "."

## rmsafe.sh

This script is for warning you before you remove multiple files unknowingly.

If you've ever run "rm text*" and accidentally removed 100 files instead of the expected 5 files, this helps prevent this, by telling you exactly how many files will be removed first.

Run it like this, if for example you want to remove all files beginning with "text" in their filename:

./rmsafe.sh text*

## swapfiles.sh

This script swaps the contents of two files. For example, if you have files a.txt and b.txt, once you run it, a.txt will have the former b.txt content and b.txt will have the former a.txt content.

It doesn't check the file extensions so it's up to you to make sure you don't swap file.txt with image.png, but if you make a mistake you can always swap them back.

Run it like this:

./swapfiles.sh a.txt b.txt

## unixtime.sh

This prints out the current unix time.

Run it like this:

./unixtime
