require 'rspec/core'
require 'weather_data'

describe WeatherReader do
  it "should read the file" do
    weather_reader = WeatherReader.new
    weather_reader.read_data("weather_data.txt")

    expect(weather_reader).not_to eq(nil)
  end

  it "should create an array of data" do
    weather_reader = WeatherReader.new
    weather_reader.read_data("weather_data.txt")

    expected = true

    expect(weather_reader.create_data_array.is_a? Array).to eq expected
  end

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