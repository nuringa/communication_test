require_relative 'test_passage'
require_relative 'result'
require_relative 'file_reader'

puts 'ВАШ УРОВЕНЬ ОБЩИТЕЛЬНОСТИ'
puts 'Тест поможет определить ваш уровень коммуникабельности.'
puts
puts 'Правдиво ответьте на вопросы:'

test = TestPassage.new
test.proceed_test

result = Result.new
puts "Результат: #{test.total} баллов."
puts
puts result.choose_result(test.total)
