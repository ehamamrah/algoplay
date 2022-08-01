# Given two non-empty arrays of integers, write a function that determines
# whether the second array is a subsequence of the first one.

# A subsequence of an array is a set of numbers that aren't necessarily adjacent
# in the array but that are in the same order as they appear in the array. For
# instance, the numbers [1, 3, 4] form a subsequence of the array
# [1, 2, 3, 4], and so do the numbers [2, 4]. Note
# that a single number in an array and the array itself are both valid
# subsequences of the array.

def isValidSubsequence(array, sequence):
  result = []
  element_index = 0
  position = 0
  previous_value = 0
  for value in sequence:
    if value in array and value != previous_value:
      if array.index(value) >= element_index and array.index(value) >= position:
        result.append(True)
        element_index = array.index(value)
    position += 1
    previous_value = value

  if set(sequence) == set(result):
    return True
  else:
    return len(result) == len(sequence)