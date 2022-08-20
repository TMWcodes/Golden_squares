def say_hello(name)
    return "hello #{name}"
  end

# p say_hello("kay")
  
  # Intended output:
  #
  # > say_hello("kay")
  # => "hello kay"

  # 2 mins

  def encode(plaintext, key)
    cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
    "cipher outputs #{key} with repeats removed #{key.chars.uniq} and adds it to array of letters #{ ('a'..'z').to_a } with #{key.chars} removed"
    # cipher is ["s", "e", "c", "r", "t", "k", "y", "a", "b", "d", "f", "g", "h", "i", "j", "l", "m", "n", "o", "p", "q", "u", "v", "w", "x"]
    ciphertext_chars = plaintext.chars.map do |char|
      (65 + cipher.find_index(char)).chr
      cipher.find_index(char)
      # "4 12 1 0 23 13 10 4 10 18 24 14 21 16 19 1 9 18 22 1 3 4 12 1 15 7 25 6 9 18 11"
    end
    return ciphertext_chars.join
  end
 
 #12 mins+

  def decode(ciphertext, key)
    cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
    # ciphertext.chars
    # => ["E", "M", "B", "A", "X", "N", "K", "E", "K", "S", "Y", "O", "V", "Q", "T", "B", "J", "S", "W", "B", "D", "E", "M", "B", "P", "H", "Z", "G", "J", "S", "L"]
    plaintext_chars = ciphertext.chars.map do |char|
      p cipher[char.ord - 65]
       # char.ord, coverts charaters into numbers
       # =>"69776665887875697583897986818466748387666869776680729071748376"
       # 65 - char.ord
       # "-4-12-1 0-23-13-10-4-10-18-24-14-21-16-19-1-9-18-22-1-3-4-12-1-15-7-25-6-9-18-11"
       #  cipher[65 - char.ord]
       # => "vjzsrimvmbchkfaznbtzwvjzgpeqnbl"
    end
    return plaintext_chars.join
    # => "vjzsrimvmbchkfaznbtzwvjzgpeqnbl"
  end
  
  # 25 mins 

  # Intended output:
  #
  encode("theswiftfoxjumpedoverthelazydog", "secretkey")
  # => "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"

  # actual
  #=> nil can't be coerced into Integer (TypeError)
  # bug 'a'...'z', solution 'a'..'z'
  
  p decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
  # => "theswiftfoxjumpedoverthelazydog"

  # actual
  # => "uixschlulaegtdyxmarxvuixfospmaj"
  # bug 65 - char.ord, solution char ord - 65 