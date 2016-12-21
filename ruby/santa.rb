# Create Santa class

class Santa

    def speak
        puts "Ho, ho, ho! Haaaappy holidays!"
    end 

    def eat_milk_and_cookies(cookie_type)
        puts "That was a good #{cookie_type}"
    end
    def initialize
        puts "Initializing Santa instance ..." 
    end 
end 

# Test the Santa class

hussein = Santa.new
hussein.speak
hussein.eat_milk_and_cookies("chocolate")
