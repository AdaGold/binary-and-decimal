#uses rand method, which might be cheating?
def print_binary
  all_values = []

  until all_values.length == 16
    four_bits = []
    4.times do
      four_bits << rand(0..1).to_s
    end
    if !all_values.include? four_bits
      all_values << four_bits
    end
  end

  all_values.map! {|sequence| sequence.join }

  puts "#{all_values}"
end

def print_binary2
  bits = []
  binary = ""

  16.times do |num|
    binary = ""
    until binary.length == 4
      if num % 2 == 0
        binary = "0" + binary
      else
        binary = "1" + binary
      end
        num = num >> 1
    end
    bits << binary
  end

puts bits
end

print_binary2
