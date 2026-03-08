# Morse code dictionary
# This constant stores Morse code symbols as keys
# and their corresponding letters as values
MORSE_CODE = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z'
}

# Method 1: Decode a single Morse character
# Example: decode_char(".-") => "A"

def decode_char(char)
  MORSE_CODE[char]
end

# Method 2: Decode a Morse word
# Letters in Morse are separated by 1 space
# Example: "-- -.--" => "MY"

def decode_word(word)
  letters = word.split(' ') # split the word into Morse characters

  decoded_letters = letters.map do |letter|
    decode_char(letter) # convert each Morse character
  end

  decoded_letters.join # join the letters to form a word
end


# Method 3: Decode a full Morse message
# Words are separated by 3 spaces
# Example: "-- -.--   -. .- -- ." => "MY NAME"

def decode(message)
  words = message.split('   ') # split message into words

  decoded_words = words.map do |word|
    decode_word(word) # decode each word
  end

  decoded_words.join(' ') # join words with spaces
end

# Decode the pirate treasure message

message = ".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ..."

puts decode(message)