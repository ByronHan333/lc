# https://www.youtube.com/watch?v=-buRS1f7C8E&ab_channel=AlgoSTEM

# @param {String} s
# @return {Integer}
def balanced_string_split(s)
  i = lct = rct = 0
  n_str = 0

  while i < s.length
    s[i] == 'L' ? lct += 1 : rct += 1
    n_str += 1 if lct == rct && lct != 0
    i += 1
  end

  n_str
end
s = 'RLRRLLRLRL'
s = "RLRRRLLRLL"
s = "LLLLRRRR"
p balanced_string_split(s)
