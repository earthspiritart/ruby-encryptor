class Encryptor

  def initialize(default_rotation = 13)
    @rotation = default_rotation  
  end
  
  def cipher
    letters = ("a".."z").to_a
    rotated = letters.rotate(@rotation)
    zipped = letters.zip(rotated)
    Hash[zipped]
  end

  def dicipher
    letters = ("a".."z").to_a
    rotated = letters.rotate(-@rotation)
    zipped = letters.zip(rotated)
    Hash[zipped]
  end

  def encrypt_letter(letter)
    cipher[letter.downcase]
  end
 
  def decrypt_letter(letter)
    dicipher[letter.downcase]
  end

  def encrypt(unencrypted_string)
    #take string
    #split into array of letters
    # encrypt each letter
    #mash all encrypted letters back into string
    letters = unencrypted_string.split("")
    result = letters.collect do |letter|
       encrypt_letter(letter)
      end
    result.join
  end
  def decrypt(encrypted_string)
    #split string into array of letters
    #iterate over each letter
    #decrypt_letter which would rotate negative @rotation
    #return new array
    #join the array
    #returns unecrypted string
    letters = encrypted_string.split("")
    result = letters.collect do |letter|
       decrypt_letter(letter)
      end
    result.join


  end
end
