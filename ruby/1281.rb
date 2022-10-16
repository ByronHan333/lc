# @param {Integer} n
# @return {Integer}
def subtract_product_and_sum(n)
  digits = n.to_s.split('').map(&:to_i)
  product = digits.reduce{|acc,el| acc * el}
  sum = digits.reduce{|acc,el| acc + el}
  product - sum
end
