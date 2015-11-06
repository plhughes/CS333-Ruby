=begin
Phoebe Hughes and Anh Uong 
CS333 Project 3
functions.rb
Testing if methods can be assigned to variables
and if you can pass in methods to other methods
=end

def returning(param)
	return "Returning: " + param.to_s
end

#there is no return statement but the last expression
#evaluated is returned 
def no_return(param)
	value = "The value of the parameter is " + param.to_s
	36+20
end

def test_return
	#methods can be assigned to variables
	var1= returning(5) 
	var2= no_return(10)

	puts var1 #Output: Returning: 5
	puts var2 #Output: 56
end


test_return


#Assign method to variable
def test_method_passing(param)
	puts "Parameters of method are #{param}"
end

puts "\nAssigning method to variable"
method_var = method(:test_method_passing)
method_var.call(6)


#passing in method to another method 

#create method that returns a string
def method1(param)
	return "This is method1. Parameter is " + param.to_s
end

#creates a method that takes a method as the parameter
def method2(method)
	result = method.call(7) #calls the method with the argument 7
	return result
end

#calls method2, passing in method1 as the parameter
puts method2( method(:method1))


#passing in procs to another method
proc = Proc.new do |y| #y is a parameter
	puts "Testing proc"
	puts "y is " + y.to_s 
	x = 5 + 5 + y
	puts "5 + 5 + y is " + x.to_s
end

#function that takes a proc
def testing_procedure(procedure)
	procedure.call(5) #executes code in proc
	procedure.call(20)
end

testing_procedure(proc)


