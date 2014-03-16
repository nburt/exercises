class RPSGame

  def initialize(user_choice, computer_choice = rand(1..3))
    @user_choice = user_choice.downcase
    @computer_choice = computer_choice
  end

  def play
    case
      when @computer_choice == 1
        computer_choice = "rock"
      when @computer_choice == 2
        computer_choice = "paper"
      when @computer_choice == 3
        computer_choice = "scissors"
    end

    case
      when @user_choice == "rock"
        if computer_choice == "scissors"
          "Congrats, rock beats scissors, you win!"
        elsif computer_choice == "paper"
          "Sorry, paper beats rock, you lose."
        else
          "It's a tie!"
        end
      when @user_choice == "paper"
        if computer_choice == "rock"
          "Congrats, paper beats rock, you win!"
        elsif computer_choice == "scissors"
          "Sorry, scissors beats paper, you lose."
        else
          "It's a tie!"
        end
      when @user_choice == "scissors"
        if computer_choice == "paper"
          "Congrats, scissors beats paper, you win!"
        elsif computer_choice == "rock"
          "Sorry, rock beats scissors, you lose."
        else
          "It's a tie!"
        end
      else
        user_choice = "Error, please type rock, paper, or scissors."
    end

  end
end