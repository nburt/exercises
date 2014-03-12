class WeatherReader
  def initialize(file)
    @data = File.open(file) do |x|
      x.read
    end
  end

  def smallest_temperature_difference
    create_data_array
    eliminate_junk
    array_of_strings_for_each
    temperature_difference_creator
    @difference_hash = @difference_hash.sort_by { |k, v| v }
    @difference_hash[0][1]
  end

  private

  def create_data_array
    @data = @data.lines
  end

  def eliminate_junk
    @data = @data.slice(8..-3)
  end

  def array_of_strings_for_each
    i = 0
    @data.each do |x|
      @data[i] = @data[i].split(" ")
      i += 1
    end
    @data[0]
  end

  def temperature_difference_creator
    @difference_hash = Hash.new
    i = 0
    @data.each do |x|
      @difference_hash[i + 1] = @data[i][1].to_i - @data[i][2].to_i
      i += 1
    end
  end

  def temperature_difference_accessor(key)
    @difference_hash[key]
  end
end


#rewrite spec so you only have to call one method