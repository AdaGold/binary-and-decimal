# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.
def binary_to_decimal(binary_number)
  binary_number_array = binary_number.split('')
  decimal = 0
    j = 7
  binary_number_array.each do |digit|
      product = digit.to_i * (2**j)
      j -= 1
      decimal = decimal.to_i + product.to_i
  end
  return decimal
end


p binary_to_decimal('11110100')
