require 'rspec/core'
require 'rps_game'

describe RPSGame do
  it "returns a message when rock, paper, or scissors win" do
    game = RPSGame.new("rock")

    expect(game.play).to eq "Congrats, rock beats scissors, you win!"
  end

  it "can process user choices of any case" do
    game = RPSGame.new("PaPeR")

    expect(game.play).to eq "Congrats, paper beats rock, you win!"
  end

end

# Your task is to write a program to play rock-paper-scissors with
# a human player, keeping score as you go. When you are finished,
# you are welcome to read or run a suggested solution, or to post
# your own solution or discuss the exercise in the comments below.