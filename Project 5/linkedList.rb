=begin
Phoebe Hughes and Anh Uong 
CS333 Project 5
linkedList.rb
Creates and test linkedList
=end

#creating Struct for node and linked list
Node = Struct.new(:value, :next, :prev)
LinkedList = Struct.new(:head, :tail, :size)


#creates a new LinkedList struct, initializes it, and returns it.
def ll_create
	ll = LinkedList.new(nil, nil, 0)
	return ll
end 

#adds a node to the front of the list, storing the given data in the node.
def ll_push(ll, data)
	ll.size = ll.size + 1
	node = Node.new(data, nil, nil)
	if ll.head == nil #no nodes yet
		ll.head = node
		ll.tail = node
	else
		node.next = ll.head
		ll.head.prev = node
		ll.head = node 
	end
end 


#removes the node at the front of the list and returns the associated data.
def ll_pop(ll) 
	if ll.head == nil
		return nil
	end 
	
	ll.size = ll.size - 1
	val = ll.head.value 
	
	if ll.size == 0 #empty 
		ll.head = nil
		ll.tail = nil
	else  #assign new head
		ll.head = ll.head.next
		ll.head.prev = nil
	end
	
	return val
end

#adds a node to the end of the list, storing the given data in the node.
def ll_append(ll, data)
	ll.size = ll.size + 1
	node = Node.new(data, nil, nil)
	if ll.head == nil
		ll.head = node
		ll.tail = node
	else
		node.prev = ll.tail
		ll.tail.next = node
		ll.tail = node 
	end
end

#removes the first node in the list whose data matches target given the comparison function.
#The function returns the pointer to the data.
def ll_remove(ll, target, comp_method)
	cur = ll.head
	while (cur != nil)
		result = comp_method.call(target, cur.value)
		if (result == 1)
			ll.size = ll.size - 1
			
			if (ll.size == 0) #empty
				ll.head = nil
				ll.tail = nil
			end
			
			prevN = cur.prev
			nextN = cur.next
			
			if cur == ll.head #removing head
				ll.head = nextN
			else 
				prevN.next = nextN
			end
				
			if cur == ll.tail #removing tail
				ll.tail = prevN
			else 
				nextN.prev = prevN
			end
			
			return cur.value
		end
		cur = cur.next
	end
	return nil
end


# returns the size of the list.
def ll_size(ll)
	return ll.size
end

#removes all of the nodes from the list
def ll_clear(ll)
	ll.head = nil
	ll.tail = nil
	ll.size = 0
end

#traverses the list and applies the given function to the data at each node.
def ll_map(ll, method)
	cur = ll.head
	while cur != nil
		method.call(cur)
		cur = cur.next
	end
end

#prints each nodes value starting at head
def ll_print_from_head(ll)
	cur = ll.head
	while (cur != nil)
		puts "Value #{cur.value}"
		cur = cur.next
	end
end 

#prints each nodes value starting at tail
def ll_print_from_tail(ll)
	cur = ll.tail
	while (cur != nil)
		puts "Value #{cur.value}"
		cur = cur.prev
	end
end 

#determines if a and b are equal
def equals(a, b)
	if (a == b)
		return 1
	end
	return 0
end

#multiplies value in node by 2
def mult2(node)
	node.value = node.value*2
end


#tests a linked list with integers
def test_int_ll
	ll = ll_create()
	
	for i in 0..5
		ll_push(ll, i)
	end
	
	puts "Creating LinkedList"
	ll_print_from_head(ll)
	
	puts "Size of linked list is " + ll_size(ll).to_s
	
	puts "\nPopped value: #{ll_pop(ll)}"
	puts "After popping"
	ll_print_from_head(ll)
	
	puts "\nAfter appending"
	ll_append(ll, 100)
	ll_print_from_head(ll)
	
	#testing removing
	removed = ll_remove(ll, 1, method(:equals))
	puts "\nRemoving " + removed.to_s
	
	removed = ll_remove(ll, 4, method(:equals))
	puts "\nRemoving " + removed.to_s
	
	removed = ll_remove(ll, 500, method(:equals))
	puts "\nTrying to remove 500" + removed.to_s
	ll_print_from_head(ll)
	
	
	#testing map
	puts "\nAfter multiplying all vals by 2"
	ll_map(ll, method(:mult2))
	ll_print_from_head(ll)
	
	
	#printing from tail 
	#in order to check to see if linking is correct
	puts "\nPrinting from tail"
	ll_print_from_tail(ll)
	
	#testing clearing
	puts "\nClearing"
	ll_clear(ll)
	ll_print_from_head(ll)
end

#tests a linked list with a strings
def test_str_ll
	ll = ll_create()
	
	for i in ['x', 'y', 'z']
		ll_push(ll, i)
	end
	
	puts "Creating LinkedList"
	ll_print_from_head(ll)
	
	puts "Size of linked list is " + ll_size(ll).to_s
	
	puts "\nPopped value: #{ll_pop(ll)}"
	puts "After popping"
	ll_print_from_head(ll)
	
	puts "\nAfter appending"
	ll_append(ll, 'a')
	ll_print_from_head(ll)
	
	#testing removing
	removed = ll_remove(ll, 'x', method(:equals))
	puts "\nRemoving " + removed.to_s
	
	removed = ll_remove(ll, 'z', method(:equals))
	puts "\nRemoving " + removed.to_s
	
	removed = ll_remove(ll, 'g', method(:equals))
	puts "\nTrying to remove g" + removed.to_s
	ll_print_from_head(ll)
	
	
	#testing map
	puts "\nAfter multiplying all vals by 2"
	ll_map(ll, method(:mult2))
	ll_print_from_head(ll)
	
	
	#printing from tail 
	#in order to check to see if linking is correct
	puts "\nPrinting from tail"
	ll_print_from_tail(ll)
	
	#testing clearing
	puts "\nClearing"
	ll_clear(ll)
	ll_print_from_head(ll)
end

def test_mix_ll
	ll = ll_create()
	
	for i in ['x', 2, 'z', :a, [10, 23]]
		ll_push(ll, i)
	end
	
	puts "\nCreating LinkedList"
	ll_print_from_head(ll)
end

test_str_ll
test_int_ll
test_mix_ll