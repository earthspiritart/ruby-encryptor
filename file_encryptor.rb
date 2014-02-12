require './encryptor'

read_file = File.open('secret.txt')
word = read_file.read
read_file.close
end

e = Encryptor.new(rand(20))
encrypted_word = e.encrypt(word)

write_file = File.open('secret.txt', 'w+') do |write_file|
  write_file.write(encrypted_word)
end
