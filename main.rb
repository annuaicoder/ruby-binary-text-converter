# Method to convert string input to binary
def string_to_binary(input)
  input.bytes.map { |byte| byte.to_s(2).rjust(8, '0') }.join(' ')
end

# Method to convert a number input to binary
def number_to_binary(input)
  input.to_i.to_s(2)
end

# Main program loop
puts "Enter a number or text to convert to binary: "
input = gets.chomp

# Check if the input is a number or text
if input =~ /^\d+$/
  # Input is a number
  binary_output = number_to_binary(input)
else
  # Input is text
  binary_output = string_to_binary(input)
end

puts "Binary format: #{binary_output}"
