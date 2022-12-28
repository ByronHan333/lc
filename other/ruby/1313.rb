# @param {Integer[]} nums
# @return {Integer[]}
def decompress_rl_elist(nums)
  res = []
  len_paris = nums.length / 2
  (0...len_paris).each do |idx|
    freq = nums[idx * 2]
    val = nums[idx * 2 + 1]
    res += [val] * freq
  end
  res
end

nums = [1, 1, 2, 3]
# nums = [1,2,3,4]
p decompress_rl_elist(nums)
