name_person = 'Zed A. Shaw'
age = 35
height = 74
height_centimeters = (height * 2.54) / 100
weight = 180
weight_kilograms = weight / 2.20
eyes = 'Blue'
teeth = "white"
hair = 'brown'

puts "Let's talk about #{name_person}."
puts "He's #{'%.2f' % height_centimeters} centimeters tall." #
puts "He's #{'%.2f' % weight_kilograms} kilograms heavy."
puts "Actually that's not too heavy."
puts "He's got #{eyes} eyes and #{hair} hair."
puts "His teeth are usually #{teeth} depending on the coffee."

puts "If I add #{age}, #{height_centimeters}, and #{weight_kilograms} I get #{age + my_height + my_weight}."
