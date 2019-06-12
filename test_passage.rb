class TestPassage
  attr_reader :total

  def initialize
    @questions = FileReader.new.read_from_file('./data/questions.txt')
    @total = 0
    @user_choice = nil
  end

  def proceed_test
    @questions.each do |question|
      puts question
      get_user_choice
      count_total
      @user_choice = nil
    end
  end

  def get_user_choice
    until @user_choice == 'да' || @user_choice == 'нет' || @user_choice == 'иногда'
      puts 'Введите Да или Нет или Иногда'
      @user_choice = STDIN.gets.chomp.downcase
    end
  end

  def count_total
    if @user_choice == 'да'
      @total += 2
    elsif @user_choice == 'иногда'
      @total += 1
    end
  end
end
