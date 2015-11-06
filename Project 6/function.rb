=begin
Phoebe Hughes and Anh Uong 
CS333 Project 6
functions.rb
Shows function usage and variety
=end

$LOAD_PATH << '.'

require "functions_importing"

#Duck typing example
class Dog
	def talk()
		puts "Woof!"
	end
end

class Cow
	def talk()
		puts "Moo!"
	end
end

class Frog
	def speak()
		puts "Ribbit!"
	end
end
		
def animal_talk(animal)
	animal.talk
end

def test_duck_typing
	cow = Cow.new()
	dog = Dog.new()
	frog = Frog.new()

	animal_talk(cow)
	animal_talk(dog)
	#animal_talk(frog) #run-time error 
end

#test_duck_typing()
#----------------------------------------------------------------------

#multiple arguments allowed
def multiple_params(*params)
	puts "The number of arguments is " + params.size.to_s
	print "Arguments are: " + params.to_s
	puts "\nThe second argument is " + params[1].to_s
end

#multiple_params( 10, :X, "hi")
#multiple_params( :Y, :hi)

#----------------------------------------------------------------------
#Shows overriding

class Parent
	def speak
		puts "I am a parent"
	end
end

class Child < Parent
	def speak
		puts "I am a Child"
	end
end

def overriding_class_methdods
	child = Child.new()
	parent = Parent.new()
	child.speak
	parent.speak
end

def overriding
	puts "This is the first implementation of the function"
end

def overriding
	puts "2nd implementation"
end

#overriding_class_methdods()
#overriding()

#----------------------------------------------------------------------
#Dynamically create methods

foo = lambda { |a, b| puts "Foo: #{a}, #{b}" }

foo.call(10, 20)

#----------------------------------------------------------------------
#Testing imported files
#multiply(4,5)
#Math.add(4,5)