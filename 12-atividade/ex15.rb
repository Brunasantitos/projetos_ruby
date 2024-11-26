#importando arquivo txt da mesma pasta

ex15_sample = ARGV.first #ARGV é usado para obter o nome do arquivo

txt = open("ex15_sample.txt") #abrir arquivo

puts "Here's your file: #{ex15_sample}"
print txt.read #ler o arquivo

print "Type the filename again: "
file_again = $stdin.gets.chomp

txt_again = open(file_again)

print txt_again.read
