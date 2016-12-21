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

#hussein = Santa.new
#hussein.speak
#hussein.eat_milk_and_cookies("chocolate")

def create_instances(gen_list,ethn_list)
    arr_instances = []
    len = gen_list.length
    len.times do |idx|
        arr_instances << Santa.new(gen_list[idx],ethn_list[idx])
    end 
    return arr_instances
end 

gender_list = ['male','N/A','female','male','female','male']
ethnicity_list= ["white", "Latino", "white","black","N/A","Latino"]

new_instances = create_instances(gender_list,ethnicity_list)
