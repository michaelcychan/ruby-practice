def set_filename
  @filename = __FILE__
end

def print_file_by_lines
  file = File.open(@filename, "r")
  file.readlines.each do |line|
    print "#{line}\n"
  end
  file.close
end

set_filename
print_file_by_lines
