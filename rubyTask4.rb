height = 8
width = 11
nit = 9
inside_letter = "#"
outside_letter = "o"
for i in 0..6
    nit -= 1
    if i > 1 && i < 4
        rev = width - i 
        middle = inside_letter * i
        puts "#{outside_letter * rev}#{middle}#{inside_letter}#{middle}#{outside_letter * rev}"      
    elsif  i > 4 
            rev = width - nit
            middle = inside_letter * nit
            puts "#{outside_letter * rev}#{middle}#{inside_letter}#{middle}#{outside_letter * rev}"
    end
end