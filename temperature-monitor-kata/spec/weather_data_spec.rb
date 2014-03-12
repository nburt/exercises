require 'rspec/core'
require 'weather_data'

describe WeatherReader do
  it "should output the day number with the smallest temperature spread" do
    pending
    weather_reader = WeatherReader.new

    expected = 9

    expect(weather_reader.largest_temperature_difference).to eq expected
  end
end


# Write a program that outputs the day number (column one) with the smallest
# temperature spread (the maximum temperature is the second column, the minimum is
# the third column)

# Parse the weather_data.txt file provided in order to obtain the solution.