# Create Santa class
#======================
class Santa
    attr_reader :ethnicity
    attr_accessor :gender,:age 

    def initialize(gender,ethnicity)
        @gender = gender
        @ethnicity = ethnicity
        @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", 
                            "Vixen", "Comet","Cupid", "Donner", "Blitzen"]
        @age = 0
    end 

    def speak
        puts "Ho, ho, ho! Haaaappy holidays!"
    end 

    def eat_milk_and_cookies(cookie_type)
        puts "That was a good #{cookie_type}"
    end

    def celebrate_birthday
        @age += 1
    end

    def get_mad_at(name)
        @reindeer_ranking << name if @reindeer_ranking.delete(name) 
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
def create_instances(gen_list,ethn_list,num)
    arr_instances = []
    num.times do|santa|
        santa = Santa.new(gen_list.sample,ethn_list.sample)
        santa.age = rand(0..140)
        arr_instances << santa
    end
    return arr_instances
end 

=begin   
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
       # instance.gender = "African"
    end 
end 
=end
def print_instances_list(list)
  idx = 1
  puts "====== Your Santas List Info ======="
  list.each do |instance|
    puts "Santa number#{idx}:\n"
    puts "-" * 20
    puts "Gender: #{instance.gender}\n"
    puts"Ethnicity: #{instance.ethnicity}\n"
    puts "Age: #{instance.age}\n ----------------"
    idx +=1
  end
   puts "=" * 20
end


# Test driver code
#======================
gender_list = ['male','N/A','female','male','female','male']
ethnicity_list= ["white", "Latino", "white","black","N/A","Latino"]

new_instances = create_instances(gender_list,ethnicity_list,50)
instance_behave(new_instances)