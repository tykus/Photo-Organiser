class Photo

  def init filename

  end


  protected

  def read_exif
    # Get the EXIF data from the Photo
    exif = EXIFR::JPEG.new(this); nil

    # Parse the relevant information
    date_taken = Time.parse(this_photo.date_time.to_s)
  rescue ArgumentError
    date_taken = Time.parse(this_photo.date_time_original.to_s)
  
    photo_camera = this_photo.make.to_s
  
  # Build the new filename based on the extracted data in the form YYYY-MM-DD HH-MM-SS CAMERA_MAKE.jpg
  new_name = "%d-%02d-%d %02d-%02d-%02d %s.jpg" % [date_taken.year, date_taken.month, date_taken.day, date_taken.hour, date_taken.min, date_taken.sec, photo_camera]
  parent_dir = date_taken.year
  child_dir = "%02d" % date_taken.month


    # Create a hash with the information we are interested in
    return {
      'date_taken' => new_name, 
      'parent'=>parent_dir, 
      'child'=>child_dir
    }

    return photo_info
  end

  # Rename the file based on the EXIF data
  def rename_file

  end

  # Move the file to the appropriate sub-directory
  def move_file

  end

end