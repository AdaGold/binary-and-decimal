require 'minitest/autorun'
require 'minitest/reporters'
require_relative '../lib/binary_to_decimal'

describe "binary to decimal" do
  it "From 10011001 to 153" do
    binary_array = [1, 0, 0, 1, 1, 0, 0, 1]
    expected_decimal = 153

    binary_to_decimal(binary_array).must_equal expected_decimal
  end

  it "From 00001101 to 13" do
    binary_array = [0, 0, 0, 0, 1, 1, 0, 1]
    expected_decimal = 13

    binary_to_decimal(binary_array).must_equal expected_decimal
  end

  it "From 10000000 to 128" do
    binary_array = [1, 0, 0, 0, 0, 0, 0, 0]
    expected_decimal = 128

    binary_to_decimal(binary_array).must_equal expected_decimal
  end

  it "From random binary to decimal" do
    binary_array = Array.new(8) { rand(0..1) }
    expected_decimal = binary_array.join.to_s.to_i(2)

    binary_to_decimal(binary_array).must_equal expected_decimal
  end
  
  it "first array is empty and second array is nil: not equal" do
    array1 = []
    array2 = nil
    array_equals(array1, array2).must_equal false
  end

  it "first array is nil and second array is empty: not equal" do
    array1 = nil
    array2 = []
    array_equals(array1, array2).must_equal false
  end

  it "first array and second array are equal until last index: not equal" do
    array1 = [10, 20, 30, 40, 50, 60]
    array2 = [10, 20, 30, 40, 50, 547]
    array_equals(array1, array2).must_equal false
  end
end
