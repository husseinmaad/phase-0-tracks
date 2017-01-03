#Item class
# attr:
#name
#color
#price
#method
#getter color,price,name
#to_s override

class Item
  attr_reader :name, :color, :price
  def initialize(name,color,price)
    @name = name 
    @color = color
    @price = price
  end 

  def to_s
    "The #{@color} #{@name} is cost #{@price} dollar."
  end 
end 
#item = Item.new("table","black",120)
#puts item 