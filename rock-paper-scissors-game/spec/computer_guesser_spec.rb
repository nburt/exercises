require 'rspec'
require 'computer_guesser'

describe ComputerGuesser do
  it "randomly creates a computer choice" do
    computer_guesser = ComputerGuesser.new

    guesses = []

    15.times do
      guesses << computer_guesser.guess
    end

    expect(guesses.uniq).to match_array ["rock", "paper", "scissors"]
  end
end
