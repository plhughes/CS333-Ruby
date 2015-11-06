=begin
Phoebe Hughes and Anh Uong 
CS333 Project 3
types.rb
=end


#creating Struct
Test_Struct = Struct.new(:param1, :param2) do
	def method
		puts "This is a method of Test_Struct"
	end
end


class Test
	@@class_variable = 5
	CON = "Constant" #Constants must start with a capital letter
	CON = "hi" #Can reassign constants, but will give warning
	CONNUM = 5
	
	def initialize(param1, param2)
		@param1 = param1
		@param2 = param2
	end
	
	def print_vars()
		puts "Param 1 #@param1"
		puts "Param 2 #@param2"
		puts "Constant value #{CON}"
	end
	
	def bools()
		bT = true 
		bF = false
		
		puts "\nBools: #{bT}, #{bF}"
	end
	
	def symbols()
		puts "\nSymbols"
		exampleSym = :"Hi"
		puts "Example Symbol: #{exampleSym}"
		puts "Object ID for :Hi2 : " 
		puts :Hi2.object_id #integer representation
		puts :Hi2.object_id #note that when printed give the same integer 
		puts "Object ID for Hi2: "
		puts "Hi2".object_id
		puts "Hi2".object_id #different ids for strings
	end
	
	def strs()
		puts "\nStrings"
		str1 = "This is a string"
		str2 = 'This is another string'
		str3 = 57.to_s #this casts to a string
		puts "Str1: #{str1} \nStr2: #{str2} \nNumber cast to a string: #{str3}"
		str1[0] = 'S'
		puts "Editing str1[0] = 's' result: #{str1}"
		puts "Adding str1 to this string " + str1
		puts "Multiplying str2: " + str2*2 #repeats str2 twice
	end
	
	def nums()
		puts "\nNumbers"
		int = 5
		float = 3.7
		intMath = (5%3)*(2/3)+7-4
		floatMath = (5%3)*(2/3.0)+7-4
		puts "Int Math (5%3)*(2/3)+(7-4): " + intMath.to_s
		puts "Float Math (5%3)*(2/3.0)+(7-4): " + floatMath.to_s
		puts "Rounding down 7/2: " + (7/2).to_s
	end
	
	def arrays()
		puts "\nArrays"
		nums = ["a", 5, "b", 2]
		puts 'Array ["a", 5, "b", 2]: '
		puts nums
		puts "Arrays are zero indexed nums[0]: " + nums[0].to_s
		puts "Mult by 2: " + (nums*2).to_s #repeats values in list twice
		puts "Pushing 200: " + nums.push(200).to_s
	end
	
	def hash()
		puts "\nHashes"
		hashTest = { :key1 => "value", :key2 => "value2" }
		puts hashTest
		puts "Value of :key1: " + hashTest[:key1]
		hashTest[:key3] = "value3" 
		puts "Adding key3"
		puts hashTest
		anotherHash = Hash.new #a different way to create a hash
		anotherHash["String Key"] = "String"
		anotherHash[5] = "Int Key"
		puts "Another hash: #{anotherHash}"
	end
	
end

test = Test.new(1, 3)
test.print_vars()
test.cons()
test.bools()
test.symbols()
test.strs()
test.nums()
test.arrays()
test.hash()


puts "\nStruct:"
test_struct = Test_Struct.new("abc", 805)
puts test_struct.param1  
test_struct.method()