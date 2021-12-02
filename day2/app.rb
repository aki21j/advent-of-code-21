class Dive
  def initialize
    @input_arr = File.readlines('input.txt')
    @x, @y, @aim = 0, 0, 0
  end

  def calculate_position
    @input_arr.each do |item|
      direction_arr = item.split
      if direction_arr[0] == "forward"
        @x += direction_arr[1].to_i
      elsif direction_arr[0] == "down"
        @y += direction_arr[1].to_i
      elsif direction_arr[0] == "up"
        @y -= direction_arr[1].to_i
      end
    end
    mul = @x * @y
    puts mul
  end

  def calculate_position_with_aim
    @input_arr.each do |item|
      direction_arr = item.split
      if direction_arr[0] == "forward"
        @x += direction_arr[1].to_i
        @y += @aim * direction_arr[1].to_i
      elsif direction_arr[0] == "down"
        @aim += direction_arr[1].to_i
      elsif direction_arr[0] == "up"
        @aim -= direction_arr[1].to_i
      end
    end
    mul = @x * @y
    puts @x
    puts @y
    puts mul
  end
end


dive_obj = Dive.new
# dive_obj.calculate_position
dive_obj.calculate_position_with_aim