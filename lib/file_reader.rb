class FileReader
  attr_reader :questions, :results
  
  def initialize
    @questions = read_from_file('./data/questions.txt')
    @results = read_from_file('./data/results.txt')
  end
  
  def read_from_file(file_name)
    File.readlines(file_name).map(&:chomp)
  end
end
