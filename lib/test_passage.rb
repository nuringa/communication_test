class TestPassage
  attr_reader :total

  def initialize
    @total = 0
    @user_choice = nil
  end

  def proceed_test(questions)
    questions.each do |question|
      puts question
      get_user_choice
      count_total
      @user_choice = nil
    end
  end

  def get_user_choice
    until @user_choice == 1 || @user_choice == 2 || @user_choice == 3
      puts 'Введите: 1 (Да) или 2 (Нет) или 3 (Иногда)'
      @user_choice = STDIN.gets.to_i
    end
  end

  def count_total
    if @user_choice == 1
      @total += 2
    elsif @user_choice == 3
      @total += 1
    end
  end
end
