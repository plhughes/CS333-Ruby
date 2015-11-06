=begin
Phoebe Hughes and Anh Uong 
CS333 Project 3
scoping.rb
Demonstrating scopes 
=end


#scope of class variables and instance variables
class Class_Instance_Variable_Test
	@@class_variable = 15
	def initialize
		@instance_variable = 25
	end
	
	def change_class(num)
		@@class_variable = num
	end
	
	def change_instance(num)
		@instance_variable = num
	end
	
	def to_str
		"Class Variable: #{@@class_variable}, Instance Variable: #{@instance_variable}"
	end
end

Con1 = "constant 1"
#constants test
class Constants
	Con2 = "constant 2"
	Con2 = 5 #You can change the value of constants but provides warning
	def print_constant
		puts "Cons1: " + Con1.to_s
		puts "Cons2: " + Con2.to_s
	end
end

def con
	#Con3 = "constant 3" #cannot declare in functions
	puts "Cons1: " + Con1.to_s
end


#scope of local variables 
def local_test
	puts "\nLocal Variables Test"
	puts "global_var: " + $global_var.to_s # 10
	
	#puts "X: " + x.to_s #error no x defined in function
	
	#scope of for loop
	for i in 0..1
		j = 15
		puts "J0: " + j.to_s #puts 15
	end
	puts "J1: " + j.to_s #15, variables defined inside for loop can be referenced outside them

	
	#changing global variables
	$global_var = 20
	
end

#local variables/ global variables
$global_var = 10
$i = 5
x = 200
local_test
puts "global_var: " + $global_var.to_s



#class and instance
puts "\nClass Variable and Instance Variable Test"
a = Class_Instance_Variable_Test.new
b = Class_Instance_Variable_Test.new
a.change_class(100)
a.change_instance(100) 
puts "Class a: " + a
puts "Class b: " + b

#class and instance outside of class
@@class_var = 6
@instance_var = 10



#constants
constant_test = Constants.new
constant_test.print_constant
con
