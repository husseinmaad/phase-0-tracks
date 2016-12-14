def soccer_team
 team_1 = "madrid"
 team_2 = "ireland"
 puts "i love soccer"
 yield(team_1,team_2)
 puts "i love soccer"
end

soccer_team { |team_1, team_2| puts "great to see #{team_1} vs #{team_2}" }

basketball_teams = ['lakers', 'rockets', 'jazz', 'bulls', 'cavs']


baseball_teams {
 dodgers: 'los angeles',
 padres: 'san diego',
 giants: 'san francisco',
 red_sox: 'boston',
}

p basketball_teams

basketball_teams.each do |item|
puts "great job #{item}"
end

p basketball_teams

basketball_teams.map! do |item|
  item += " awesome job"
end
p basketball_teams

baseball_teams.each do |key, value|
 puts "#{key} are from #{value}"
end


student_grades = [77,65,64,100,55]

student_grades.delete_if{|grade| grade < 70}
p student_grades

team_wins = {
 dodgers: '33',
 padres: '55',
 giants: '66',
 red_sox: '67',
}

team_wins.delete_if{|key,value| value < '60'}
p team_wins

student_grades.keep_if{|grade| grade > 60}
p student_grades

team_wins.keep_if{|key,value| value > '65'}
p team_wins

a = [ "a", "b", "c" ]
if a.include?("b") then a.delete("b")
end
p a


if team_wins.has_value?(33)
 puts "ok"
end
p team_wins

a = [1, 2, 3, 4, 5, 0]
p a.drop_while {|i| i < 3 }