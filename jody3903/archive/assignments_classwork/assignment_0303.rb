
#Exercise 1
array = ["michael", "pam", "jim", "angela", "dwight"]

array.each do |name|
   if name.length % 2 == 0
    puts "#{name[0].upcase}#{name[1..-1]} is #{name.length} letters long."
   else
    puts "#{name} is #{name.length} letters long."
    end
end


#Exercise 2
def practice(text, number)
   "#{text} \n"*number 
end
puts practice("jody", 5)

#Exercise 2 - option 2
# def practice(text, number)
#      text*number 
# end
# puts practice("jody", 5)

#Exercise 2 - option 3
# def practice(text, number)
#     number.times do 
#      puts "#{text}" 
#    end
# end
# puts practice("jody", 5)


#Exercise 3
maximum = [1, 3, 5, 7, 12, 25]

puts "#{maximum.max}" #Exercise 3-A

new_maximum = maximum.reverse #Exercise 3-B
   puts "#{new_maximum[0]}"
   #maybe use sort or sort_by?

#Exercise 4
   #need to find longest
   #if location isn't longest print x spaces to equal longest else print location
   #print asterisk to equal longest location +4 for top/bottom


box_names = ["NYC", "STL", "LA", "SEATAC"]


location_lengths = location.map { |location| location.length }
longest_location = location_lengths.max
top_bottom_star_count = 2 + longest_location + 2

#top
top_bottom_star_count.times { print "*" }

#location
box_names.each do |location|
   print "* "
   print name

   extra_spaces = longest_location - location.length
   extra_spaces.times { print " " }
   size = "#{location.length}"
 print "* #{location}" + " " size.times
end
end





   # if "#{location.length}" < "#{location.max}"
   #    puts "#{location}"
   # end