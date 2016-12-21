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
    def print_info
        puts "your gender is #{@gender} and your ethnicity is #{@ethnicity}"
    end 
end 

# Test the Santa class

#hussein = Santa.new
#hussein.speak
#hussein.eat_milk_and_cookies("chocolate")


# Driver code methods

def create_instances(gen_list,ethn_list)
    arr_instances = []
    len = gen_list.length
    len.times {|idx|arr_instances << Santa.new(gen_list[idx],ethn_list[idx])}
    return arr_instances
end 

def instance_behave(list)
    list.each do |instance|
        puts " #{instance}"
        instance.speak
        puts "---------------------"
        instance.eat_milk_and_cookies("chocolate")
        puts "---------------------"
        instance.print_info
        puts "---------------------"
    end 
end 

# Test driver code

gender_list = ['male','N/A','female','male','female','male']
ethnicity_list= ["white", "Latino", "white","black","N/A","Latino"]

new_instances = create_instances(gender_list,ethnicity_list)
instance_behave(new_instances)
