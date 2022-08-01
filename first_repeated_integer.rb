# Write a funtion that returns the first repeated integer in an array.

def first_repeated_integer(integers_array)
  return 'Enter correct values' if integers_array.empty? || !integers_array.is_a?(Array)

  integers_array.each_with_index do |num, index|
    cloned_array = integers_array.clone
    cloned_array.delete_at(index)

    if cloned_array.include?(num)
      return num
    end
  end

  nil
end