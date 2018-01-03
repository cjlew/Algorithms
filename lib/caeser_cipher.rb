def caesar_cipher(str, shift)
  alphabet = ("a".."z").to_a
  new_str = ""
  str.chars.each do |chr|
    if chr == " "
      new_str << " "
      next
    end
    current_idx = alphabet.index(chr)
    new_idx = (current_idx + shift) % 26

    new_str << alphabet[new_idx]

  end
  new_str
end
