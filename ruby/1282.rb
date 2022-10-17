# @param {Integer[]} group_sizes
# @return {Integer[][]}
def group_the_people(group_sizes)
  res = []
  tmp = Hash.new { |h, k| h[k] = [] }
  group_sizes.each_with_index do |size, idx|
    tmp[size] << idx
  end
  tmp.each_pair do |size, arr|
    res << arr if arr.length = size
    
  end
end
