require 'rubygems'
require 'pry-debugger'

def rotx(x, string, encrypt=true)
  string_arr = string.chars
  sol = string_arr
  uppercase = ('A'..'Z').to_a
  lowercase = ('a'..'z').to_a
  string_arr.each_with_index do |letter1, index1|
    if /[[:alpha:]]/.match(letter1)
      if letter1 == letter1.downcase then alph_arr = lowercase else alph_arr = uppercase end
      alph_arr.each_with_index do |letter2, index2|
        if letter1 == letter2
          if encrypt then index2 += x else index2 -= x end
          index2 -= 26 while index2 > 26
          index2 += 26 while index2 < 0
          sol[index1] = alph_arr[index2]
        end
      end
    end
  end
  sol.join
end

