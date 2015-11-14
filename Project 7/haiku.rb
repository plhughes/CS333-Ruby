=begin
Phoebe Hughes and Anh Uong 
CS333 Project 7
haiku.rb
helps explain memory management
=end


puts "#{GC.start} makes"
ruby = "run garbage collect"
uses = [:mark, :and, :sweep]

GC.disable
turns = [:off, :garbage_collection]
puts "Does not collect" 
