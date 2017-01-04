# Virus Predictor

# I worked on this challenge [by myself, with:Karan Oberoi ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# Require_relative is a more efficient way to find data in your current 
# directory, relative to the file that contains the require_relative statement.
# Require is used to locate data from an external source. You have to designate
# a path to find that data.

require_relative 'state_data'

class VirusPredictor

# Initializes a new instance. Takes state, population density, and population as 
# an argument, and assigns them instance variables.

  def initialize(state_of_origin)
    @state = state_of_origin
    @population = STATE_DATA[state_of_origin][:population]
    @population_density = STATE_DATA[state_of_origin][:population_density]
  end

# Runs the two methods mentioned: predicted_deaths and speed_of_spread.

  def virus_effects
    print "#{@state} will lose #{predicted_deaths} people in this outbreak and will spread across the state in #{speed_of_spread} months.\n\n"
  end

private  

# Calculates the number of deaths using the population density and population, specific to each state.

  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      rate = 0.4
    elsif @population_density >= 150
      rate = 0.3
    elsif @population_density >= 100
      rate = 0.2
    elsif @population_density >= 50
      rate = 0.1
    else
      rate = 0.05
    end
    return number_of_deaths = (@population * rate).floor
  end

# Calculates the speed of spread of virus using the population density for each state.

  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.

    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2
    else
      speed = 2.5
    end
  end
end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state
STATE_DATA.each do |state_name, data|
  state = VirusPredictor.new(state_name)
  state.virus_effects
end


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects
# 
# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects
# 
# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects
# 
# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section
=begin
What are the differences between the two different hash syntaxes shown in the state_data file?

- the first one (STATE_DATA) is define as a constant hash and inside that we define
  another hashes that have the state name as key and we assign the value in different
  way to save it all the key and the value in the same variable.  

What does require_relative do? How is it different from require?

- Require_relative is a more efficient way to find data in your current 
  directory, relative to the file that contains the require_relative statement.
  Require is used to locate data from an external source. You have to designate
a path to find that data.

What are some ways to iterate through a hash?
.each_with_key
.each
.map

When refactoring virus_effects, what stood out to you about the variables, if anything?

- yes, we can re-factor the methods inside the virus_effects and not to use 
any arguments and we can use the local instance variable to get the passing values.

What concept did you most solidify in this challenge?

- understand more new ways to using the hash.
- using the private section and make these methods privatively uses in the class.
- constance variables .
- new ways to make your code more efficient, DRY and readable .
- passing data from another file.
- the different between the require relative and require. 
=end