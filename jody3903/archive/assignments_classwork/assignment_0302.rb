
# exercise 1
bff = "kate"

puts bff.length
puts bff.reverse
puts bff[0].upcase + bff[1..4]
puts "#{bff[0].upcase}#{bff[1..3]}" #main solution


# exercise 2

friends = {
    "kate" => 32,
    "lexi" => 35,
    "tj" => 35
}

nameNew = "lexi"
ageNew = friends["lexi"]
puts "#{nameNew} is #{ageNew}"
puts "#{nameNew} is #{friends[nameNew]} years old."  #main solution

friends.each do |name, age|
   puts "#{name} is #{age} years old."
end



  


