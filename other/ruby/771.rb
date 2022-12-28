# @param {String} jewels
# @param {String} stones
# @return {Integer}
def num_jewels_in_stones(jewels, stones)
  stones.count(jewels)
end

# jewels = 'z'
# stones = 'ZZ'
jewels = 'aA'
stones = 'aAAbbbb'

p num_jewels_in_stones(jewels,stones)

p jewels.is_a?(String)
p stones.is_a?(String)
