string_1 = "i am learning Ruby language."
string_2 = "why? Coz it's cool and I like it."

puts "1: Make string_1 capital case: " +string_1.split.map(&:capitalize).join(" ")
puts "2: Make string_1 lower case: " +string_1.downcase
puts "3: Change the string_1's each letter's case to the opposite case: " +string_1.swapcase
puts "4: Print string_1's characters count: ", string_1.length
puts "5: Check if string_1 contains the word ruby:", string_1.include?("ruby")
puts "6: split string-2 BY '?': ", string_2.split("?")
puts "7: concat  string_1 and string_2:" +string = string_1 + string_2

puts "8: Concatenated string, change from I to We and make the capital case:"
string["I"] = "We"
puts string

puts "9: Convert string_1 to the symbol:" ,symbol = string_2.to_sym
puts "10 :List methods available on strings:", String.methods
puts "11: strings length difference:", string_2.length - string_1.length
puts "12-1: Convert `nil` to an array: ", nil.to_a
puts "12-2: Convert `nil` to an string: ", nil.to_s
puts "12-3: Convert `nil` to an float: ", nil.to_f

puts "13: method which tells if the number is even or odd: "
def check(n)
  if (n.odd?)
    puts "odd number"
  else
    puts "Even number"
  end
end
check(4)