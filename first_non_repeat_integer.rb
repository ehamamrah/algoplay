# Write a funtion that returns the first non-repeated integer in an array.

def first_non_repeat_integer(integers_array)
  integers_array.each do |num|
    if arr.count(num) == 1
      num
    end
  end

  nil
end

# Solution 2
def first_non_repeat_integer_2(integers_array)
  integers_array.each_with_index do |num, index|
    cloned_array = integers_array.clone
    cloned_array.delete_at(index)

    if cloned_array.include?(num)
      return num
    end
  end

  nil
end
