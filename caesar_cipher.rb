require 'pry-byebug'

def caesar_cipher(string, shift_factor)
  # split string into chars
  split_string = string.split('')

  # store num ver of splitstring
  num_array = []

  # convert array of char into array of number
  split_string.each do |e|
    num_array.push(e.ord)
  end

  # store shifted numbers
  shifted_nums = []

  # add shift factor to each number
  num_array.each do |e|
      if e == (" ".ord)
        shifted_nums.push(e)
        next
      end

    shifted_nums.push(e + shift_factor)
  end

  #convert shifted nums to chars
  unjoint_cipher = []

  shifted_nums.each do |e|
    unjoint_cipher.push(e.chr)
  end

  # join String
  joint_cipher = unjoint_cipher.join("")

  # return string
  final_cipher = joint_cipher

  final_cipher
end

puts caesar_cipher("Hello there", -3)
