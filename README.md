## ORGANISER
A Ruby script which extracts some EXIF data from JPEG photos, renames and moves the 
files to the appropriate folder.

#Notes
The script extracts the date-time EXIF information and camera model and builds a 
new filename based on the attributes in the form:

<pre>	YYYY-MM-DD HH-MM-SS camera_make.jpg</pre>

This script assumes the folder structure:

<pre>	./YYYY/MM/ </pre>

The parent direction, ., contains a staging directory, at the same level as the YYYY directories,
in which unprocessed images are stored and from where the script is run. (future updates to run from anywhere!)

#Execution
In the image staging directory:

<pre>ruby organiser.rb</pre>

#Requires
EXIFR gem - install using:

<pre>gem install exifr</pre>