=begin
Phoebe Hughes and Anh Uong 
CS333 Project 7
garbage_collection.rb
identifies when garbage is collected
=end

class Dog
	def talk()
		puts "Woof!"
	end
end


def numGarbage(iters)
	puts "\nNumber of calls to new Dog: " + iters.to_s
	beforeGC = GC.count
	puts "Number of Garbage Collections before creating: " + beforeGC.to_s
	
	sTime = Time.now
	for i in 0..iters
		x= Dog.new()
	end
	
	
	eTime = Time.now
	time = (eTime-sTime)*1000.0
	
	afterGC = GC.count
	puts "Number of Garbage Collections after creating: " + afterGC.to_s
	
	puts "Time: #{time}ms"

end


numGarbage(10000)
GC.start
numGarbage(100000)
GC.start
numGarbage(1000000)

puts "\nGC Stats #{GC.stat}"