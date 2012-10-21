## ORGANISER
A Ruby script which extracts some EXIF data from JPEG photos, renames and moves the 
files to the appropriate folder.

#Notes
The script extracts the date-time EXIF information and camera model and builds a 
new filename based on the attributes in the form:
	YYYY-MM-DD HH-MM-SS camera_make.jpg

* the reason for camera_make is to separate 

This script assumes the folder structure:
	./YYYY/MM/

The parent direction, ., contains a staging directory, at the same level as the YYYY directories,
in which unprocessed images are stored.

#Requires
EXIFR gem - install using:
gem install exifr