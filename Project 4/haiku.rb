=begin
Phoebe Hughes and Anh Uong 
CS333 Project 3
haiku.rb
creates a haiku that explains structs
=end


Is = Struct.new(:makes, :struct )   #is struct new makes struct
x = Is.new("instance", "of struct") #x is new instance of struct
puts "This is struct #{x}"          #this is struct x 