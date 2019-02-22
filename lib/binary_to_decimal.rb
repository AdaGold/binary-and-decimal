# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.

# binary_array = [1, 0, 0, 1, 1, 0, 0, 1]
def binary_to_decimal(binary_array)
  # raise NotImplementedError
  power = binary_array.length - 1
  base_10 = 0

  binary_array.each do |i|
    if i == 1
      base_10 += 2 ** power
    end
    power -= 1
  end
  puts "#{binary_array} in base 10 is: #{base_10}"
  return base_10
end

binary_to_decimal([1, 0, 0, 1, 1, 0, 0, 1])
binary_to_decimal([0, 0, 0, 0, 1, 1, 0, 1])
binary_to_decimal([1, 0, 0, 0, 0, 0, 0, 0])
