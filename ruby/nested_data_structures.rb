github = {
    first_account:{
      name:'Hussein',
      repositors: {
        phase0_track:{
          content_list: ['Ruby','CSS','HTML','Git','JS']
        },
        personal:{
          content_list: ['examples','test']
        },
        website: {
          content_list: ['index','images','logo','pages']
        }
      }, 
    },
      second_account: {
        name: 'Ana',
        repositors:{
          personal: {
            content_list:['exams','homeworks','cheat sheet']
          },
          programming: {
            content_list:['c++','HTML','C#','python','VBA']
          },
        },
  
    },
}


p github[:first_account][:name]

p github[:second_account][:name]

p github[:first_account][:repositors][:phase0_track][:content_list].sort

p github[:first_account][:repositors][:personal][:content_list].delete_if{|item| item == 'test'}

p github[:second_account][:repositors][:programming][:content_list].reverse

p github [:first_account][:name].chars

p github [:second_account][:name].upcase

p github [:second_account][:repositors][:personal][:content_list].map!{|file| file.upcase}

p github [:second_account][:repositors][:personal].clear

p github [:second_account][:repositors][:programming].empty?

p github [:first_account][:repositors][:website][:content_list].include?("index")
p github[:second_account][:repositors][:programming][:content_list].length

puts "Website Folder Contain"
github [:first_account][:repositors][:website][:content_list].each do |item|
  puts "#{item}"
end
