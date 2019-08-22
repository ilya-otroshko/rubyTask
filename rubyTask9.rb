puts "Enter number"
n = gets.chomp.to_i
number = n.to_s.split('')
c = 0
max = number.each_with_index.max
for i in 0...number.length
   check = number.include? max[0]
   if check == true
    maX = number.each_with_index.max
    c += 1
    number.delete_at(maX[1])
   end
end
   puts c