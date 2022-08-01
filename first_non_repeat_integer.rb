# Write a funtion that returns the first non-repeated integer in an array.

def first_non_repeat_integer(integers_array)
  return 'Enter correct values' if integers_array.empty? || !integers_array.is_a?(Array)

  integers_array.each do |num|
    if arr.count(num) == 1
      num
    end
  end

  nil
end
