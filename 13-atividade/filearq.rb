#close - fecha o arquivo
#read - ler o conteúdo do arquivo
#readline - lê apenas uma linha
#truncate - esvazia o arquivo
#write('stuff') - grava coisas no arquivo, parâmetro é uma str
#seek(0) - move o local de leitura para o início do arquivo

filename = ARGV.first

puts "We're going to erase #{filename}"
puts "If you don't want taht, hit CTRL-C (^C)."
puts "If you do want that, hit RETURN."

$stdin.gets

puts "Opening the file ..."
target = open("teste.txt", 'w')

puts "Truncating the file. Goodbye!"
target.truncate(0)

puts "Now I'm going to ask you for three lines."

print "line 1: "
line1 = $stdin.gets.chomp
print "line 2: "
line2 = $stdin.gets.chomp
print "line 3: "
line3 = $stdin.gets.chomp

puts "I'm going to write these to the file"

target.write(line2)
target.write("\n")
target.write(line2)
target.write("\n")
target.write(line3)
target.write("\n")

puts "And finally, we close it."
target.close
