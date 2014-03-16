class RPSGame

  def initialize(user_choice)
    @user_choice = user_choice.downcase
  end

  def play
    case
      when @user_choice == "rock"
        "Congrats, rock beats scissors, you win!"
      when @user_choice == "paper"
        "Congrats, paper beats rock, you win!"
      when @user_choice == "scissors"
        "Congrats, scissors beats paper, you win!"
    end
  end

end