class Table

    attr_accessor :h, :w
    def initialize(h, w)
        @h = h
        @w = w
    end   
end

class Robot
        
    attr_accessor :x, :y, :direction, :table
    def initialize(table)
         
        @table = Table.new(5,6)

    end

    def place (x, y, direction)
        xm = x 
        ym = y

        @values = ["north", "west", "south", "east"]
    
        if !@values.include?(direction)
            p "wrong direction"

        elsif xm > table.w && ym > table.h 
            p "robot on the floor"

        else
            p "robot created"
            @direction = direction
            @x = x
            @y = y
        end

    end

    def move
        @endOfTable = "Robot on the edge of the table, use commands: 'LEFT' or 'RIGHT' to turn around" 

        case @direction
            when "north"
                if table.h > y
                    @y += 1  
                else puts @endOfTable
                end
            when "south"
                if y > 1
                    @y -= 1
                else puts @endOfTable
                end
            when "east"
                if table.w > x
                     @x += 1
                else puts @endOfTable
                end
            when "west"
                if x > 1
                    @x -= 1
                else puts @endOfTable
                end
            else "error"
            end  

            puts report       
        end

    def left
        
        @direction = @values[@values.index(direction)+1]   
        @direction = "north" if @direction == nil
        puts report   

     end

    def right

        @direction = @values[@values.index(direction)-1]
        puts report   
    end

    def report

        puts "The current coordinates of the robot #{x} : #{y} and the robot looks at #{direction}"
    end      

  end

    puts "To create a robot write: 'PLACE X Y Z'- where X, Y -numbers(robot coordinates), Z - direction of movement of the robot", "Direction: 'NORTH', 'WEST', 'EAST', 'SOUTH'","Use the commands to control the robot: 'MOVE', 'LEFT', 'RIGHT'","To find out where the robot is now write: 'REPORT'"
    
    while true do

        begin
        # text = gets.chomp.downcase
        command = gets.chomp.downcase.split(" ")
        # place = text.split(" ")

        if command[0] == "place"
            robot = Robot.new(true)
            robot.place(command[1].to_i, command[2].to_i, command[3])

        else 
            eval("robot.#{command[0]}")
        end

        rescue => err
            puts err 
        end
    
    end