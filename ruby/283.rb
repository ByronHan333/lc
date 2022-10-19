require 'byebug'
# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def swap(nums, i, j)
  nums[i], nums[j] = nums[j], nums[i]
end

def move_zeroes(nums)
  zero_pointer = non_zero_pointer = 0
  while zero_pointer < nums.length
    if nums[zero_pointer] != 0
      zero_pointer += 1
      next
    end

    # debugger
    if nums[non_zero_pointer] == 0 & non_zero_pointer < nums.length - 1
      non_zero_pointer += 1
      next
    end

    if zero_pointer < non_zero_pointer
      swap(nums, zero_pointer, non_zero_pointer)
      zero_pointer += 1
      non_zero_pointer += 1
    end

    break if non_zero_pointer == nums.length
  end


end

nums = [0,1,0,3,12]
nums = [0]
p nums
move_zeroes(nums)
p nums
