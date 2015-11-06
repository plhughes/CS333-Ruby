=begin
Phoebe Hughes and Anh Uong 
CS333 Project 6
functions_importing.rb
File to be imported into another file
=end

def multiply(x, y)
	puts "#{x} times #{y} is " + (x*y).to_s
end


module Math
	def Math.add(x, y)
		puts "#{x} plus #{y} is " + (x+y).to_s
	end
end