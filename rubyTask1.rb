puts "Enter number"
n = gets.chomp.to_i
change = 0
firstArray = []
secondArray = []
def randomNumber (x)
    x.times.map{
        Random.rand(1..x)
    }
end
firstArray = randomNumber n
for i in 0...n do
    secondArray[i] = change + firstArray[i]
    change += firstArray[i]
end 
  print firstArray
  print secondArray