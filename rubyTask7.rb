puts "Enter number"
n = gets.chomp.to_i
randomArray = Array.new(n) { rand(5...21) }
hash = { 10 => {}, 9 => {}, 8 => {}, 7 => {}, 6 => {}, 5 => {} }    

for i in 0..randomArray.length-1
    difference = randomArray[i] - randomArray.min 
    if difference > 4 && difference < 11
        hash[difference].merge!(i => randomArray[i])   
    end  
end    

for i in 5...11
    if hash[i] == {}
        hash.delete(i)
    end 
end
puts hash
print randomArray


