 dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
  word_count = Hash.new(0)
  string_arr = string.downcase.split
  string_arr.each do |word|
    dictionary.each do |dictionary_word|
      if word.include?(dictionary_word)
        word_count[dictionary_word] += 1
      end
    end
  end
  p word_count
end

substrings("Howdy partner, sit down! How's it going?", dictionary)