#prática 38
#é um exercício sobre uso de str com array


ten_things = "apples oranges crows telephone light sugar"

puts "wat there are not 10 things in that list. let's fix that."


stuff = ten_things.split(' ') #quebra a str om base no delimitador e retorna em um array
more_stuff = ["Day", "Night", "Song", "Frisbee", "Corn", "Banana", "Girl", "Boy"]


while stuff.length != 10 #o que é o length? é para saber o número de elementos em um array ou o número de caracteres em uma str
    next_one = more_stuff.pop #pop remove e retorna o último elemento
    puts "Adding: #{next_one}"
    stuff.push(next_one) #adiciona um item
    puts "There are #{stuff.length} items now."
end


puts "There we go: #{stuff}"

puts "Let's do some things with stuff."

puts stuff[1]
puts stuff[-1]
puts stuff.pop
puts stuff.join(' ')
puts stuff[3...5].join('#')foi declarado uma