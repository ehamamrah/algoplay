# Leetcode challenge
# You are given two non-empty linked lists representing two non-negative integers. The digits are stored in reverse order, and each of their nodes contains a single digit. Add the two numbers and return the sum as a linked list.
# You may assume the two numbers do not contain any leading zero, except the number 0 itself.

# Input: l1 = [2,4,3], l2 = [5,6,4]
# Output: [7,0,8]
# Explanation: 342 + 465 = 807.


# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}

def add_two_numbers(l1, l2)
  list_1 = []
  list_2 = []
  
  ll1, ll2 = l1, l2
  
  while ll1 or ll2 do
    if ll1
      list_1 << ll1.val()
      ll1 = ll1.next()
    end
    if ll2
      list_2 << ll2.val()
      ll2 = ll2.next()
    end
  end
      
  first_list = list_1.reverse.join().to_i
  second_list = list_2.reverse.join().to_i
  
  result = (first_list + second_list).to_s
  result.reverse().split('').map(&:to_i)
end