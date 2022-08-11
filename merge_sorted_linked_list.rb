# Leetcode challenge
# You are given the heads of two sorted linked lists list1 and list2.
# Merge the two lists in a one sorted list. The list should be made by splicing together the nodes of the first two lists.
# Return the head of the merged linked list.

# Example 1:
# Input: list1 = [1,2,4], list2 = [1,3,4]
# Output: [1,1,2,3,4,4]

# Example 2:
# Input: list1 = [], list2 = []
# Output: []

# Example 3:
# Input: list1 = [], list2 = [0]
# Output: [0]

def merge_two_lists(list1, list2)
  unsorted_list = []
  ll1, ll2 = list1, list2
  while ll1 or ll2 do
    if ll1
      unsorted_list << ll1.val()
      ll1 = ll1.next()
    end
    if ll2
      unsorted_list << ll2.val()
      ll2 = ll2.next()
    end
  end
  
  unsorted_list.sort
end