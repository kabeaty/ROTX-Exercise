require 'rubygems'
require 'pry-debugger'

def rotx(x, string, encrypt=true)
  new_string = string.split("")
  sol = new_string
  uppercase = ('A'..'Z').to_a
  lowercase = ('a'..'z').to_a
  new_string.each_with_index do |item, index1|
    if /[[:alpha:]]/.match(item)
      if item == item.downcase then alph_array = lowercase else alph_array = uppercase end
      alph_array.each_with_index do |letter, index2|
        if item == letter
          if encrypt then index2 += x else index2 -= x end
          index2 -= 26 while index2 > 26
          new_letter = alph_array[index2]
          sol[index1] = new_letter
        end
      end
    end
  end
  sol.join
end
