def run_to_the_hills
    # require_relative '../app/controllers/metallibs_controller.rb'


print "Name a color: "
input = gets.strip
MetalLib.create(type_id: "color_1", user_input: input)

print "Please enter an noun: "
input = gets.strip
MetalLib.create(type_id: "noun_1", user_input: input)

print "Name a body of water: "
input = gets.strip
MetalLib.create(type_id: "water", user_input: input)

print "Noun: "
input = gets.strip
MetalLib.create(type_id: "noun_2", user_input: input)

print "Name an emotion: "
input = gets.strip
MetalLib.create(type_id: "emotion", user_input: input)

print "Verb: "
input = gets.strip
MetalLib.create(type_id: "verb_1", user_input: input)

print "A different verb: "
input = gets.strip
MetalLib.create(type_id: "emotion", user_input: input)

print "Name a thing: "
input = gets.strip
MetalLib.create(type_id: "thing", user_input: input)

print "Name a verb: "
input = gets.strip
MetalLib.create(type_id: "verb_2", user_input: input)

print "Name another verb: "
input = gets.strip
MetalLib.create(type_id: "verb_3", user_input: input)

print "Name something you'd give as a gift: "
input = gets.strip
MetalLib.create(type_id: "gift", user_input: input)

print "Name a person: "
input = gets.strip
MetalLib.create(type_id: "person_2", user_input: input)

print "Name a place: "
input = gets.strip
MetalLib.create(type_id: "place_2", user_input: input)

print "A verb: "
input = gets.strip
MetalLib.create(type_id: "verb_4", user_input: input)

print "Name a group of something: "
input = gets.strip
MetalLib.create(type_id: "group", user_input: input)

print "Name another verb: "
input = gets.strip
MetalLib.create(type_id: "verb_5", user_input: input)

print "Name a noun: "
input = gets.strip
MetalLib.create(type_id: "noun_3", user_input: input)

print "Name a location: "
input = gets.strip
MetalLib.create(type_id: "verb_4", user_input: input)

print "Name a noun: "
input = gets.strip
MetalLib.create(type_id: "noun_4", user_input: input)


x = MetalLib.pluck(:user_input)

puts <<-eos

#{x[0]} #{x[1]} came across the #{x[2]}
He brought us #{x[3]} and #{x[4]}
He #{x[5]} our tribes, #{x[6]} our creed
He took our #{x[7]} for his own need

We #{x[8]} him hard we #{x[9]} him well
Out on the plains we gave him #{x[10]}
But many came too much for #{x[11]}
Oh will we ever be set free?

Riding through #{x[12]} and barren wastes
#{x[13]} hard on the plains
Chasing the #{x[14]} back to their holes
#{x[15]} them at their own game
Murder for #{x[16]} the stab in the back
Women and children are cowards attack

Run to the #{x[17]}, run for your #{x[18]}
Run to the #{x[17]}, run for your #{x[18]}

eos

end