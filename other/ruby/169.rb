# @param {Integer[]} nums
# @return {Integer}
def majority_element(nums)
  major_ele = nums[0]
  count = 1
  (1...nums.length).each do |idx|
    incre = major_ele == nums[idx] ? 1 : -1
    count += incre
    if count == 0
      major_ele = nums[idx]
      count = 1
    end
  end
  major_ele
end

# nums = [3,2,3]
nums = [2,2,1,1,1,2,2]
# nums = [3,3,4]

p majority_element(nums)
