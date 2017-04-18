def cipher (string, shift)
  arr = string.split('')
  letters_arr = [*"a".."z"]
  letters2_arr = [*"A".."Z"]
  
  if shift > 25
    shift = shift % 25
  end
  
  arr2 = arr.map do |x|
      if letters_arr.include?(x)
        x = letters_arr.index(x)
        other = (x + shift)
        if other > 25
          other = other - 26
        end
        x = letters_arr[other]
      else
        x
      end
      if letters2_arr.include?(x)
        x = letters2_arr.index(x)
        other = (x + shift)
        if other > 25
          other = other - 26
        end
        x = letters2_arr[other]
      else
        x
      end
  end
  arr2.join
end

#test it out below!
cipher("I want to break free", 1)


