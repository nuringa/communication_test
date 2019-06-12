class FileReader
  def read_from_file(file_name)
    File.readlines(file_name).map(&:chomp)
  end
end
