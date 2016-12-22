=begin
module Shout
  # we'll put some methods here soon, but this code is fine for now!
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end
 def self.yelling_happily(words)
    words + "!" + " :)"
  end 
end
=end
module Shout
   def yell_angrily(words)
    words + "!!!" + " :("
  end
 def yelling_happily(words)
    words + "!" + " :)"
  end 
end 

class Scary
  include Shout
end 

class Funny 
  include Shout
end 

