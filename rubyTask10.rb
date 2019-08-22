array = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arrayEven = []
arrayOdd = []
for i in 0...array.length
    if array[i].even?
        arrayEven.push(array[i])
    else arrayOdd.push(array[i])
    end
end
print "четный индекс #{arrayEven}\n"
print "нечетный индекс #{arrayOdd}"