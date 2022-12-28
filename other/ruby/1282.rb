# @param {Integer[]} group_sizes
# @return {Integer[][]}
def break_array(arr, sub_length)
  res = []
  i = 0
  while i < arr.length
    res << arr[i...i+sub_length]
    i += sub_length
  end
  res
end

def group_the_people(group_sizes)
  res = []
  tmp = Hash.new { |h, k| h[k] = [] }
  group_sizes.each_with_index do |size, idx|
    tmp[size] << idx
  end
  tmp.each_pair do |size, arr|
    t = break_array(arr, size)
    res += t
  end
  # res.sort{|a,b| a.length <=> b.length}
  res
end

# p break_array([0, 1, 2, 3, 4, 6], 3)
# p break_array([0, 1, 2, 3, 4, 6], 1)
# p break_array([0], 1)

# groupSizes = [2,1,3,3,3,2]
# groupSizes = [3, 3, 3, 3, 3, 1, 3]
groupSizes = [2,2,1,1,1,1,1,1] # [[2],[3],[4],[5],[6],[7],[0,1]]
p group_the_people(groupSizes)
