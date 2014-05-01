require 'rubygems'
require 'pry-debugger'

def rotx(x, string, encrypt=true)
  string_arr = string.chars
  string_arr.each_with_index do |letter, index|
    if /[[:alpha:]]/.match(letter)
      letter == letter.downcase ? letter_case = true : letter_case = false
      letter_ascii = letter.ord
      encrypt ? letter_ascii += x : letter_ascii -= x
      if letter_case
        if letter_ascii > 122
          letter_ascii = 97 + ((letter_ascii - 97) % 26)
        else
          letter_ascii = 122 - ((122 - letter_ascii) % 26)
        end
      else
        if letter_ascii > 90
          letter_ascii = 65 + ((letter_ascii - 65) % 26)
        else
          letter_ascii = 90 - ((90 - letter_ascii) % 26)
        end
      end
      string_arr[index] = letter_ascii.chr
    end
  end
  string_arr.join
end
