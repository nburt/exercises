require 'rspec/core'
require 'rps_game'

describe RPSGame do

  it "can process user choices of any case" do
    game = RPSGame.new("PaPeR", 1)

    expect(game.play).to eq "Congrats, paper beats rock, you win!"
  end

  it "will display an error message if rock, paper, or scissors is not typed" do
    game = RPSGame.new("Orange")

    expect(game.play).to eq "Error, please type rock, paper, or scissors."
  end

  it "generates a computer choice and compares it to the user choice, generating a winner" do
    game = RPSGame.new("rock", 3)

    expect(game.play).to eq "Congrats, rock beats scissors, you win!"
  end
end

# Your task is to write a program to play rock-paper-scissors with
# a human player, keeping score as you go. When you are finished,
# you are welcome to read or run a suggested solution, or to post
# your own solution or discuss the exercise in the comments below.