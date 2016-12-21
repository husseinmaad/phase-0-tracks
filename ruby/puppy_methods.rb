class Puppy
    def initialize
      puts  "Initializing new puppy instance ..."
    end 

    def fetch(toy)
        puts "I brought back the #{toy}!"
        toy
    end

    def speak(number)
        number.times{|x| puts "Woof!"}
    end 
    def roll_over
        print "\"*rolls over*\"\n"
    end 
    def dog_year(h_age)
        dog_age = h_age * 7
        return dog_age
    end 

    def have_five
      puts "Have Five !!"
    end 
end

max = Puppy.new
max.fetch("ball")
max.speak(4)
max.roll_over
p max.dog_year(2)
max.have_five

# Cerate soccer class

class Soccer_Players
def initialize
 puts  "Initializing new soccer player instance ..."
end
def kick_the_ball
 puts "Kick the ball!!!"
end
def players_speed(speed)
 puts "the player speed is #{speed}"
end
end

def create_instance(number)
players = {}
idx = 0 
   while idx < number+1
      players["player#{idx}"] = Soccer_Players.new
      idx +=1 
   end
   return players
end
new_player = create_instance(50)
p new_player

def iterate_instance(list)
   list.each do |player,value|
     list[player].kick_the_ball
     list[player].players_speed(90)
  end
end

iterate_instance(new_player)