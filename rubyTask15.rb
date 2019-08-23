text = gets.chomp
File.open("bla_bla.txt", 'a') {|f| f.write("\n\n#{text}") }