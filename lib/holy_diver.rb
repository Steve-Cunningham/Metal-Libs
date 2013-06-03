require_relative '../app/controllers/metallibs_controller'

def holy_diver

print "Please enter an adjective: "
input = gets.strip
MetalLib.create(type_id: "adjective_1", user_input: input)

print "Please enter a verb: "
input = gets.strip
MetalLib.create(type_id: "verb_1", user_input: input)

print "Type the name of an animal: "
input = gets.strip
MetalLib.create(type_id: "animal_1", user_input: input)

print "Name a feature of that animal: "
input = gets.strip
MetalLib.create(type_id: "animal_feature", user_input: input)

print "Name one of the five senses: "
input = gets.strip
MetalLib.create(type_id: "sense", user_input: input)

print "Name a gemstone: "
input = gets.strip
MetalLib.create(type_id: "gemstone", user_input: input)

print "Name another animal: "
input = gets.strip
MetalLib.create(type_id: "animal_2", user_input: input)

print "Name a color: "
input = gets.strip
MetalLib.create(type_id: "color", user_input: input)

print "Pick another verb: "
input = gets.strip
MetalLib.create(type_id: "verb_2", user_input: input)

print "And one more verb: "
input = gets.strip
MetalLib.create(type_id: "verb_3", user_input: input)

print "Name something in the sky: "
input = gets.strip
MetalLib.create(type_id: "sky", user_input: input)

print "Name a person: "
input = gets.strip
MetalLib.create(type_id: "person", user_input: input)

print "Pick a texture: "
input = gets.strip
MetalLib.create(type_id: "texture", user_input: input)

print "Name an adjective: "
input = gets.strip
MetalLib.create(type_id: "adjective_2", user_input: input)

print "Pick a noun: "
input = gets.strip
MetalLib.create(type_id: "noun_2", user_input: input)

print "Another noun: "
input = gets.strip
MetalLib.create(type_id: "noun_3", user_input: input)

print "One more noun: "
input = gets.strip
MetalLib.create(type_id: "noun_4", user_input: input)

print "Choose a verb: "
input = gets.strip
MetalLib.create(type_id: "verb_4", user_input: input)

print "Another verb: "
input = gets.strip
MetalLib.create(type_id: "verb_5", user_input: input)

print "Name another animal: "
input = gets.strip
MetalLib.create(type_id: "animal_3", user_input: input)

print "Pick an animal's organ: "
input = gets.strip
MetalLib.create(type_id: "organ", user_input: input)

print "Another noun: "
input = gets.strip
MetalLib.create(type_id: "noun_5", user_input: input)

print "Another adjective: "
input = gets.strip
MetalLib.create(type_id: "adjective_3", user_input: input)

print "Another verb: "
input = gets.strip
MetalLib.create(type_id: "verb_6", user_input: input)

print "One last animal: "
input = gets.strip
MetalLib.create(type_id: "animal_4", user_input: input)

print "Part of that animal: "
input = gets.strip
MetalLib.create(type_id: "animal_part", user_input: input)

print "Another one of the five senses: "
input = gets.strip
MetalLib.create(type_id: "sense_2", user_input: input)



x = MetalLib.pluck(:user_input)

puts "HOLY DIVER"
puts <<-eos 

Holy diver
You've been down too long in the #{x[0]} sea
Oh what's #{x[1]}ing of me

Ride the #{x[2]}
You can see his #{x[3]} but you know he's clean
Oh don't you #{x[4]} what I mean
Gotta get away
Holy Diver

Shiny #{x[5]}
Like the eyes of a #{x[6]} in the #{x[7]} and blue
Something is #{x[8]} for you

#{x[9]} for the morning
You can hide in the #{x[10]} 'till you see the light
Oh #{x[11]} will pray it's all right
Gotta get away - get away

Between the #{x[12]} lies
There's a truth that's #{x[13]} as steel
The #{x[14]} never dies
#{x[15]}'s a never ending wheel

Holy Diver
You're the #{x[16]} of the masquerade
No need to #{x[17]} so afraid

#{x[18]} on the #{x[19]}
You can feel his #{x[20]} but you know he's mean
Some #{x[21]} can never be seen

Holy Diver
You've been down too long in the #{x[22]} sea
Oh what's #{x[23]} of me

Ride the #{x[24]}
You can see his #{x[25]} but you know he's clean
Oh don't you #{x[26]} what I mean
Gotta get away
Holy Diver
eos

end