# @param {Integer[]} nums
# @return {Integer[]}
def decompress_rl_elist(nums)
  res = []
  len_paris = nums.length / 2
  puts len_paris
  (0...len_paris).each do |idx|
    freq = nums[idx * 2]
    val = num[idx * 2 + 1]
    res += val.to_s * freq
    puts val.to_s * freq
  end
  res
end

nums = [1, 1, 2, 3]
decompress_rl_elist(nums)
