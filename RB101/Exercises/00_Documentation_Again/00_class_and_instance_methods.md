Locate the ruby documentation for methods File::path and File#path. How are they different?

File::path 
  - class method
  - returns the string representation of the path

  Ex. File.path("/dev/null") #=> "/dev/null"

File#path 
  - instance method
  - returns the pathname used to create file as a string.

  Ex. File.new("testfile").path #=> "testfile"