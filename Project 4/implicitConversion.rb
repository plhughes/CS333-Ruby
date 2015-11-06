=begin
Phoebe Hughes and Anh Uong 
CS333 Project 3
implicitConversion.rb
Demonstrating implicit converting
=end

#class without to_str function
class No_Converstion
	def initialize(number)
		@num= number
	end 
end

#class with to_str function
class String_Converstion
	def initialize(number)
		@num= number
	end 
	def to_str
		"#{@num}"
	end
end

#demonstrate implicit conversion using to_str method
def class_to_str
	str_conv = String_Converstion.new(5)
	non_conv = No_Converstion.new(5)
	puts "This is implicit conversion: " + str_conv
	#puts "This gives an error: " + non_conv
end


#convert integers to floats when doing operations with a float
def float_math
	puts "\nFloat Math:"
	float = 2.5
	integer = 5
	print "2.5/5 is: "
	puts float/integer  #the integer is implicitly converted to float
	print "Type: "
	puts (float/integer).class
end


#unexpected outcomes of boolean operations and conversions
def bool_conv
	puts "\nBooleans"

	puts "True or false is: " + (true || false).to_s #showing normal boolean operation
	
	string = 'string'
	bool_string = !!string #converts to boolean
	puts "Boolean value of 'string' is: " + bool_string.to_s
	
	puts "Boolean value of 'string' or false is: " + (string || false ).to_s
	#unexpected outcome: string 
	
end

class_to_str
float_math
bool_conv