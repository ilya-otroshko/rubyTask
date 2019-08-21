i = 0
error = []
puts "Перевод слова cat"
cat = gets.chomp
if cat == "koshka"
    puts "Правильно!"
    i += 1
else 
    error.push("cat")
    puts "Ошибка, правильно будет koshka!"
end

puts "\nПеревод слова horse"
horse = gets.chomp
if horse == "loshad"
    puts "Правильно!"
    i += 1
else 
    error.push("horse")
    puts "Ошибка, правильно будет loshad!"
end

puts "\nПеревод слова dog"
dog = gets.chomp
if dog == "pec"
    puts "Правильно!"
    i += 1
else 
    error.push("dog")
    puts "Ошибка, правильно будет pec!"
end

puts "\nПеревод слова elephant"
elephant = gets.chomp
if elephant == "slon"
    puts "Правильно!"
    i += 1
else 
    error.push("elephant")
    puts "Ошибка, правильно будет slon!"
end

puts "\nПеревод слова table"
table = gets.chomp
if table == "stol"
    puts "Правильно!"
    i += 1
else 
    error.push("table")
    puts "Ошибка, правильно будет stol!"
end
finishError = error.join(", ")
puts "\nПравильных ответов: #{i}/5"
puts "\nСлова которые тебе неизвестны: #{finishError}"