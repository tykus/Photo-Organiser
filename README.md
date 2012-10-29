## ORGANISER
A Ruby script which extracts some EXIF data from JPEG photos, renames and moves the 
files to the appropriate folder.

#Notes
The script extracts the date-time EXIF information and camera model and builds a 
new filename based on the attributes in the form:
>	YYYY-MM-DD HH-MM-SS camera_make.jpg

This script assumes the folder structure:
>	./YYYY/MM/

The parent direction, ., contains a staging directory, at the same level as the YYYY directories,
in which unprocessed images are stored and from where the script is run. (future updates to run from anywhere!)

#Execution
In the image staging directory:
>	ruby organiser.rb

#Requires
EXIFR gem - install using:
>	gem install exifr