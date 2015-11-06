=begin
Phoebe Hughes and Anh Uong
CS333 Project 3
binarySearch.rb
=end

def binary_search(list, num)
	low = 0
	high = list.length-1
	while low <= high
		midInd = (low + high)/2 #rounds down so that 3/2 is 1 
		mid = list[midInd]
		
		if (num == mid)
			return true
		elsif (num < mid)
			high = midInd - 1
		else 
			low = midInd +1
		end
		
	end
	return false #if not found
end

test_list = [1, 5, 6, 7, 15, 17]

puts "List contains 2: " + binary_search(test_list, 2).to_s
puts "List contains 7: " + binary_search(test_list, 7).to_s


puts "Build in Binary search for 8: " + test_list.bsearch{ |x| 8 - x }.to_s
puts "Build in Binary search for 5: " + test_list.bsearch{ |x| 5 - x }.to_s