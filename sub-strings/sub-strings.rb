dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def sub_string(message, dictionary)
  words = message.downcase.split()

  founded_result = {}
  
  dictionary.each do |vocabulaire|
    founded_result[vocabulaire] = 0
  end

  words.each do |word|
    founded_result.each do |key, value|
      if word.include?(key)
        founded_result[key] += 1
      end
    end
  end

  puts founded_result.filter { |key, value| value != 0}
end

sub_string("Howdy partner, sit down! How's it going?", dictionary)