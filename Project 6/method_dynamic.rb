=begin
Phoebe Hughes and Anh Uong 
CS333 Project 6
method_dynamic.rb
Dynamically add a method to an object
=end


class Dynamic_Method_Test
	def good_bye(name)
		puts "Good bye #{name}"
	end
end

a = Dynamic_Method_Test.new()

#adding method called hi
a.define_singleton_method(:hi) do |first_name, last_name|
	puts "Hi #{first_name} #{last_name}!"
end

#calling method
a.hi("Jane", "Smith")