# @param {Integer} num
# @return {Integer}
def number_of_steps(num)
  step = 0
  while num > 0
    step += 1
    if num.even?
      num /= 2
    else
      num -= 1
    end
  end
  step
end

p number_of_steps(2)
