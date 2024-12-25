#prática 39
#exercício de manipulação do hash
#diferença de funcionamento entre um hash e um array

#cria um conjunto de abreviações de locais
states = {
    'Oregon' => 'OR',
    'Florida' => 'FL',
    'California' => 'CA',
    'New York' => 'NY',
    'Michigan' => 'MI'
}

cities = {
    'CA' => 'San Francisco',
    'MI' => 'Detroit',
    'FL' => 'Jacksonville'
}

#adicionando mais dados
cities['NY'] = 'New York'
cities['OR'] = 'Portland'
#cities['TX'] = 'Texas'

puts '_' * 10
puts "NY State has: #{cities['NY']}"
puts "Florida's abbreviation is: #{states['Florida']}"

puts '_' * 10
puts "Michigan has: #{cities[states['Michigan']]}"
puts "Florida has: #{cities[states['Florida']]}"


#cada abreviação com a sua cidade
puts '_' * 10
states.each do |state, abbrev| #ese segundo parâmetro mostra o valor do índice
    puts "#{states} is abbreviated #{abbrev}"
end

#verifica os dados dos dois hashs, se forem iguais, ele retorna sem reundância
puts '-' * 10
states.each do |state, abbrev|
  city = cities[abbrev]
  puts "#{state} is abbreviated #{abbrev} and has city #{city}"
end

#como não existe esse valor, ele não retorna nada, apenas uma mensagem
puts '-' * 10
state = states['Texas']

if !state
    puts "Sorry, no Texas."
end

#o comando abaixo é:
#se a variável city for false, ela imprime a mensagem, o contrário, não imprime
city = cities['TX']
city ||= 'Does Not Exist'
puts "The city for the state 'TX' is: #{city}"