def encode(plaintext, key)

  cipher = key.chars + (('a'..'z').to_a - key.chars)
  print key.chars

  ciphertext_chars = plaintext.chars.map.each do |char|
    (65 + cipher.find_index(char)).chr
    
  end
  ciphertext_chars.join

end

encode("theswiftfoxjumpedoverthelazydog", "secretkey")

# Intended output:
#
# > encode("theswiftfoxjumpedoverthelazydog", "secretkey")
# => "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
#
# > decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
# => "theswiftfoxjumpedoverthelazydog"