# Create Santa class
#======================
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

    # setter methods
    def celebrate_birthday
        @age += 1
    end
    def get_mad_at(name)
        @reindeer_ranking.delete(name)
        @reindeer_ranking.push(name)
    end 
    def gender=(gender)
        @gender = gender
    end 

    #getter method
    def age
        @age
    end 
    def ethnicity
        @ethnicity
    end 
end 

# Test the Santa class
#======================
#new_santa = Santa.new
#new_santa.speak
#new_santa.eat_milk_and_cookies("chocolate")


# Driver code methods
#======================
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
        instance.celebrate_birthday
        puts "Age: #{instance.age}" 
        instance.get_mad_at("Vixen")
        puts "Ethnicity: #{instance.ethnicity}"
        instance.gender = "African"
    end 
end 

# Test driver code
#======================
gender_list = ['male','N/A','female','male','female','male']
ethnicity_list= ["white", "Latino", "white","black","N/A","Latino"]

new_instances = create_instances(gender_list,ethnicity_list)
instance_behave(new_instances)