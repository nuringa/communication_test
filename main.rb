require_relative 'lib/test_passage'
require_relative 'lib/result'
require_relative 'lib/file_reader'

puts 'ВАШ УРОВЕНЬ ОБЩИТЕЛЬНОСТИ'
puts 'Тест поможет определить ваш уровень коммуникабельности.'
puts
puts 'Правдиво ответьте на вопросы:'

test_data = FileReader.new

test = TestPassage.new
test.proceed_test(test_data.questions)

result = Result.choose_result(test.total, test_data.results)
puts "Результат: #{test.total} баллов."
puts
puts result
