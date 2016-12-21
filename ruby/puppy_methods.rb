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