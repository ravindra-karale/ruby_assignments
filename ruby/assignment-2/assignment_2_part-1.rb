array_1 = [2, 4, 6, 8, 10]
array_2 = [1, 5, 6, 8, 11, 12]

hash_1 = {a: 'a', b: 'b', c: 'c', d: 'd', e: 'e'}
hash_2 = {x: '10', y: '20', z: '30'}

puts "1. Print 'Hello World' 10 times: "
10.times{
  puts "Hello World"
}

puts "2. Print number from 30 to 40: "
i = 30
loop do
  print(i," ")
  i+=1
  break if i >40
end

puts "\n3. Comabine array_1 & array_2 and make elements it uniq: "
print arr = (array_1 + array_2).uniq

puts "\n4. Combine array_1 & array_2 and keep only even elements:\n"
arr.select { |a| a % 2 == 0 }
print arr

puts "\n5. Combine array_1 & array_2 and delete elements if greater than 8:\n"
arr.delete_if { |a| a < 8 }
print arr

arr = array_1.map { |a| a*a*a }
sum = 0
arr.each { |a| sum += a }
puts "\n6. array_1 make cubes of all elements and add them:" ,sum

puts "7. Combine array_1 & array_2 and find index of '8': "
arr = (array_1 + array_2)
puts arr.fetch(8)

puts "8. array_1: add 5 to each element:"
arr = array_1.map { |a| a + 5 }
print arr

puts "\n9. combine hash_1 & hash_2:"
print hash_1.merge(hash_2)

puts "\n10. replace values of hash_1 with elements from array_1: "
dup_hash = hash_1.dup
new_hash = hash_1.zip(array_1)
new_hash.map { |e| dup_hash[e[0][0]]=e[1] }
puts dup_hash

puts "11. Make sum of integer values of hash_2: "
s = 0
hash_2.each {|k,v| s += v.to_i}
print s

puts "\n12. Make upcase of all values of hash_1: "
puts hash_1.each { |k,v| hash_1[k] = v.upcase }

