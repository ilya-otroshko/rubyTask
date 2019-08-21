puts "Enter number"
n = gets.chomp.to_i
randomArray = Array.new(n) { rand(1...n) }

print "случайный массив: ", randomArray, "\nв нем: ", randomArray.uniq.length, " уникальных чисел"
 