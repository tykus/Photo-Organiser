require 'exifr'
require 'time'

def fileStuff(a_photo)
  # Instantiate a new EXIFR::JPEG object 
  this_photo = EXIFR::JPEG.new(a_photo);nil #suppress output
  
  # Extract date/time and camera make EXIF data from the image object
  photo_date = Time.parse(this_photo.date_time.to_s)
  photo_camera = this_photo.make.to_s
  
  # Build the new filename based on the extracted data in the form YYYY-MM-DD HH-MM-SS CAMERA_MAKE.jpg
  new_name = "%d-%02d-%d %02d-%02d-%02d %s.jpg" % [photo_date.year, photo_date.month, photo_date.day, photo_date.hour, photo_date.min, photo_date.sec, photo_camera]
  parent_dir = photo_date.year
  child_dir = "%02d" % photo_date.month

  # returns a hash with the new filename, parent folder and child folder
  return {'name'=>new_name, 'parent'=>parent_dir, 'child'=>child_dir}
end

# Loop through each image in current and every sub-directory of the current directory
Dir.glob('./**/*.{JPG, jpg}') do |photo|

  file = fileStuff(photo)

  # Build the destination directory for the file move
  new_filename = "../#{file['parent']}/#{file['child']}/#{file['name']}"

  #Move the file only if there is not an existing image with the same name in the destination
  if !File.exists?(new_filename)
    puts "Moving #{photo} > #{new_filename}"
    File.rename(photo, new_filename)
  else
    puts "Unable to move #{photo} > #{new_filename}"
  end

end




