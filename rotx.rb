require 'rubygems'
require 'pry-debugger'

def rotx(x, string, encrypt=true)
  until x <= 26
    x -= 26
  end
  new_string = string.split("")
  sol = new_string
  uppercase = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'.split("")
  lowercase = 'abcdefghijklmnopqrstuvwxyz'.split("")
  new_string.each_with_index do |item, index1|
    if /[[:alpha:]]/.match(item)
      if item == item.downcase
        alph_array = lowercase
      else
        alph_array = uppercase
      end
      alph_array.each_with_index do |letter, index2|
        if item == letter
          new_index = index2 + x
          if new_index <= 26
            new_letter = alph_array[new_index]
            sol[index1] = new_letter
          else
            new_index -= 26
            new_letter = alph_array[new_index]
            sol[index1] = new_letter
          end
        end
      end
    end
  end
  sol.join
end
