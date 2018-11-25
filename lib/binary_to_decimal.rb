require 'pry'
# class BinaryString < String
# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.


def binary_to_decimal(binary_array)
  expected_decimal = 0
  index = 0
  size = binary_array.length
  exponent_value = size - 1
   size.times do
    element = binary_array[index]
    expected_decimal += element * (2**exponent_value)
    exponent_value -= 1
    index+=1
  end
  return expected_decimal
end
