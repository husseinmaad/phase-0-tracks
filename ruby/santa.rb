# Create Santa class

class Santa
    def initialize(gender,ethnicity)
        @gender = gender
        @ethnicity = ethnicity
        @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet",
         "Cupid", "Donner", "Blitzen"]
        @age = 0
        puts "Initializing Santa instance ..." 
    end 

    def speak
        puts "Ho, ho, ho! Haaaappy holidays!"
    end 

    def eat_milk_and_cookies(cookie_type)
        puts "That was a good #{cookie_type}"
    end
end 

# Test the Santa class

hussein = Santa.new
hussein.speak
hussein.eat_milk_and_cookies("chocolate")
