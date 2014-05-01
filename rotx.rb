require 'rubygems'
require 'pry-debugger'

# This function takes in a rotational number and a string, and
# returns the string rotated by that many letters.
# It encrypts and decrypts based on parameter given.
def rotx(x, string, encrypt=true)
  string_arr = string.chars
  string_arr.each_with_index do |letter, index|
    if /[[:alpha:]]/.match(letter)
      letter == letter.downcase ? down_case = true : !down_case
      letter_ascii = letter.ord
      encrypt ? letter_ascii += x : letter_ascii -= x
      down_case ? first = 97 : first = 65
      letter_ascii = first + ((letter_ascii - first) % 26)
      string_arr[index] = letter_ascii.chr
    end
  end
  string_arr.join
end
