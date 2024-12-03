input_file = ARGV.first

def print_all(f)
    puts f.read
end

def rewind(f) 
    f.seek(0) #posiciona o cursor em um ponto do arquivo, o número 0, significa o começo do arquivo
end

def print_a_line(line_count, f)
    puts "#{line_count}, #{f.gets.chomp}" #chomp é usado para remover quebra de linha do final de uma str.
end

current_file = open("test.txt")

puts "First let's print the whole file:\n"

print_all(current_file)

puts "Now lets's rewind, kind of like a tape."

rewind(current_file) 

puts "Lets's print three lines:"

current_line = 1
print_a_line(current_line, current_file)

current_line = current_line + 1
print_a_line(current_line, current_file)

current_line = current_line + 1
print_a_line(current_line, current_file)