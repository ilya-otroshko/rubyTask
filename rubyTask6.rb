
class Table

        attr_accessor :h, :w
        def initialize(h, w)
                @h = h
                @w = w
        end   
        def tableSize(target)
                target.height = h
                target.width = w
        end
end
class Robot
        
        attr_accessor :x, :y, :direction, :height, :width
        def initialize(x, y, direction,height, width)
                @x = x
                @y = y
                @direction = direction
                @height = height
                @width = width
        end

        def place 

                

        end

        def move
                @errorkraiCtola = "Робот на краю стола, используйте команды: 'LEFT' или 'RIGHT' чтобы развернуться" 
                
                        if direction == "NORTH"
                           if height > y
                                @y += 1
                           else puts @errorkraiCtola  
                           end
                        elsif direction == "SOUTH"
                                if y > 1
                                        @y -= 1
                                   else puts @errorkraiCtola  
                                end
                        elsif direction == "EAST"
                                if width > x
                                        @x += 1
                                   else puts @errorkraiCtola  
                                end
                        elsif direction == "WEST"
                                if x > 1
                                        @x -= 1
                                   else puts @errorkraiCtola
                                end
                        end     
        end

       
        def left

                if direction == "NORTH"
                        @direction = "WEST"

                elsif direction == "WEST"
                        @direction = "SOUTH"

                elsif direction == "SOUTH"
                        @direction = "EAST"

                elsif direction == "EAST"
                        @direction = "NORTH"
                  end 

        end

        def right
                if direction == "NORTH"
                        @direction = "EAST"

                elsif direction == "WEST"
                        @direction = "NORTH"

                elsif direction == "EAST"
                        @direction = "SOUTH"

                elsif direction == "SOUTH"
                        @direction = "WEST"
                end     
        end

        def report
                puts "Текущие координаты робота #{x} : #{y} и робот смотрит на #{direction}"
        end
end

puts "Для создания робота напиши: 'PLACE X Y Z'- где X, Y -цифры(координаты робота), Z - направление движение робота", "Направления: 'NORTH', 'WEST', 'EAST', 'SOUTH'","Для управления роботом испульзуй команды: 'MOVE', 'LEFT', 'RIGHT'","Чтобы узнать где сейчас робот пиши: 'REPORT'", "Для выхода напиши: 'EXIT'"

table = Table.new(5, 6)
while 1 == 1 do
text = ""
text = gets.chomp

comands = [text]
a = comands.join(" ")
place = a.split(" ")
if place[0] == "PLACE"
        if place[3] == "NORTH" || place[3] == "WEST" || place[3] == "EAST" || place[3] == "SOUTH"
                if place[1].to_i != 0 || place[2].to_i != 0
                        if place[1].to_i < table.w && place[2].to_i < table.h
                        robot = Robot.new(place[1].to_i, place[2].to_i, place[3],1 , 1)
                        table.tableSize(robot)
                        else puts "Не бросай робота на пол!"
                        end
                else puts "Укажи верные координаты"
                end
        else puts "Укажи верное направления"
        end
elsif !robot
        puts "Сначала создай робота командой 'PLACE 2 2 WEST'"
elsif a == "MOVE"
        robot.move
elsif a == "LEFT"
        robot.left
elsif a == "RIGHT"
        robot.right
elsif a == "REPORT"
        robot.report
        elsif text == "EXIT"
                break
else puts"Error, please input correct comands"
        end
end