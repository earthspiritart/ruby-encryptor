class Encryptor
  def cipher
    {
      'a' => "n", 'b' => 'o', 'c'=> 'p', 'd' => 'q',
      'e' => "r", 'f' => 's', 'g'=> 't', 'h' => 'u',
      'i' => "v", 'j' => 'w', 'k'=> 'x', 'l' => 'y',
      'm' => "z", 'n' => 'a', 'o'=> 'b', 'p' => 'c',
      'q' => "d", 'r' => 'e', 's'=> 'f', 't' => 'g',
      'u' => "h", 'v' => 'i', 'w'=> 'j', 'x' => 'k',
      'y' => "l", 'z' => 'm' 
    }
  end

  def encrypt_letter(letter)
    cipher[letter.downcase]
  end

  def encrypt(string)
    #take string
    #split into array of letters
    # encrypt each letter
    #mash all encrypted letters back into string
    letters = string.split("")
    result = letters.collect do |letter|
       encrypt_letter(letter)
      
    end
    result.join
  end

  def decrypt(result)
    letters = result.split("")
    new_result = letters.collect do |letter|
      encrypt_letter(letter)
    end
    new_result.join
  end
end