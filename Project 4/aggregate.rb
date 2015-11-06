=begin
Phoebe Hughes and Anh Uong 
CS333 Project 4
aggregate.rb
Explaing aggregate data types classes, structures, arrays, and hashes
=end



#classes
class Parent
	@@last_name = "Smith"
	def initialize(first_name, age)
		@name = first_name
		@age = age
	end
	def say_hello(name)
		puts "#{@name}: Hello #{name}"
	end
	def to_str
		"Name: #{@name} #{@@last_name}, Age: #{@age}"
	end
end

class Child < Parent #child inherits from parent
	def initialize(first_name, age, school)
		super(first_name, age)
		@school = school
	end
	def print_school
		puts "I got to #{@school}"
	end
end

mom = Parent.new("Jane", 30)
mom.say_hello("Jack")
puts "Mom: " + mom

college_student = Child.new("Joe", 20, "Colby College")
college_student.say_hello("Mom")
college_student.print_school
puts "College Student: " + college_student




#creating Struct
Structure1 = Struct.new(:a, :b, "hi") #instance variables are either symbols or strings
Structure2 = Struct.new(:a, :b, :c) do 
	def create_string #creates method of struct
		return "#{a}, #{b}, #{c}"
	end
end

def testing_struct
	#making instances of structs
	x = Structure1.new("A", "B", 40)
	y = Structure2.new(5, 6)
	#not all arguments are needed, but cannot give more arguments than taken
	#nil will be assigned to c

	puts "x: " + x.to_s
	puts "y: " + y.to_s

	#accessing parameter and methods of struct
	puts "x['hi']: " + x["hi"].to_s
	puts "x[:a]: " + x[:a].to_s
	puts "x.b: " + x.b.to_s #only use if variable is a symbol
	puts "Value of 0ith parameter in x: "  + x[0]

	#calling methods of stucts
	puts "Calling create_string: " + y.create_string

	#helpful methods
	puts "Length of x: " + x.length.to_s
	puts "Instance Variables in x: " + x.members.to_s
end

def arrays()
	#ways to create arrays
	a = [3, 6, "Hello", [123, 64], :symbol] #can hold multiple different types
	b = Array.new #makes empty array []
	c = Array.new(3) #makes array with three nils [nil, nil, nil]
	d = Array.new(3, "hi") #makes array with three "hi"s. ["hi", "hi", "hi"]
	
	puts "a: " + a.to_s
	puts "b: " + b.to_s
	puts "c: " + c.to_s
	puts "d: " + d.to_s
	
	#accessing elements
	puts "a[0]: " + a[0].to_s
	puts "a[0..2]: " + a[0..2].to_s #can take slice of array
	puts "a[-3]: " + a[-3].to_s #can use negative indexes also
	
	#adding to an array
	b += [10]
	b.push(50)
	puts "b after adding 10 and 50: " + b.to_s
	
	#removing from array
	a.pop
	puts "a after popping: " + a.to_s
	
	#length
	puts "The length of d is " + d.length.to_s
end 

def hashes
	#ways to create a hashes
	a = {"x" => 5, :y => "Test", 30 => :z } #can have multiple type of keys
	b = { x: 20, y: 30, z: 40} #keys can only be symbols with this syntax
	c = Hash.new #empty hash
	
	puts "a: " + a.to_s
	puts "b: " + b.to_s
	puts "c: " + c.to_s
	
	#accessing values
	puts "a['x']: " + a["x"].to_s
	puts "b.fetch(:x): " + b.fetch(:x).to_s
	
	#adding to hash
	c[:new] = 5 
	puts "c after adding two new keys: " + c.to_s
	
	#merging hashes
	d = c.merge(b)
	puts "d (merger of c and b): " + d.to_s
	
	#removing from hash
	a.clear #deletes everything
	b.delete(:x) #deletes one keys,value pair
	puts "a after clearing: " + a.to_s
	puts "b after deleting :x: " + b.to_s
	
	#helpful functions
	puts "Length of D: " + d.length.to_s
	puts "Keys of D: " + d.keys.to_s
end

