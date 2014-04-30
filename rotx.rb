require 'rubygems'
require 'pry-debugger'

def rotx(x, string, encrypt=true)
  string_arr = string.chars
  uppercase = ('A'..'Z').to_a
  lowercase = ('a'..'z').to_a
  string_arr.each_with_index do |letter1, index1|
    if /[[:alpha:]]/.match(letter1)
      letter1 == letter1.downcase ? alph_arr = lowercase : alph_arr = uppercase
      alph_arr.each_with_index do |letter2, index2|
        if letter1 == letter2
          encrypt ? index2 += x : index2 -= x
          index2 -= 26 while index2 > 26
          index2 += 26 while index2 < 0
          string_arr[index1] = alph_arr[index2]
        end
      end
    end
  end
  string_arr.join
end

