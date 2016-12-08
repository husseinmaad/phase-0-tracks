# this method to convert the string to boolean
def boolean(string)
  if string.downcase == "y"
    return true
  else 
    return false 
  end 
end
# verify the age method 
def age_verify(age, year)
  return (Time.new.year - year == age ? true : false)
end 

puts "Whats your name?"
emp_name = gets.chomp.to_s
puts "How old are you?"
emp_age = gets.chomp.to_i
puts "What year were you born"
emp_born_year = gets.chomp.to_i
puts "Our company cafeteria serves garlic bread. Should we order some for you (y/n)?"
eat_garlic = boolean(gets.chomp)
puts "Would you like to enroll in the company’s health insurance (y/n)?"
health_ins = boolean(gets.chomp)

age_after_verify = age_verify(emp_age, emp_born_year)


