def cipher_formular(index, step)
  return cipher_index = (index + step) % 26
end

def ceasar_cipher(message, step)
  a_downcase = ("a".."z").to_a
  a_upcase = ("A".."Z").to_a

  plain = message.split("").to_a
  cipher = []

  plain.each do |char|
    if a_downcase.include?(char)
      index = cipher_formular(a_downcase.index(char), step)
      cipher << a_downcase[index]
    elsif a_upcase.include?(char)
      index = cipher_formular(a_upcase.index(char), step)
      cipher << a_upcase[index]
    else
      cipher.push(char)
    end
  end

  return cipher.reduce { |cipher_message, char| cipher_message += char }
end

print ceasar_cipher("What a string!", 5)
