class SonarSweep
  def count_increments
    prev = nil
    counter = 0
    File.open("input.txt", "r").each_line do |row|
      counter += 1 if prev && row.to_i > prev
      prev = row.to_i
    end
    counter
  end

  def count_increments_sliding_window
    counter = 0
    prev_sum = nil

    file_arr = File.readlines('input.txt')
    file_length = file_arr.length

    file_arr.each_with_index do |item, index|
      if index < file_length - 2
        curr_sum = file_arr[index].to_i + file_arr[index + 1].to_i + file_arr[index + 2].to_i
        counter += 1 if prev_sum && curr_sum > prev_sum
        prev_sum = curr_sum
      end
    end
    counter
  end
end


x = SonarSweep.new
puts x.count_increments
puts x.count_increments_sliding_window
