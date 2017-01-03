#Room Class
#attr:
# name
# width
# length
# items (collection of item instance)
# method:
# getter items,name,width,length
# setter items, name
#total value (add the prices of items)
#to_s override

require_relative "item"

class Room
  attr_reader :width, :length
  attr_accessor :name, :items
  def initialize(name,width,length)
    @name = name
    @width = width
    @length = length
    @items = []
  end 
def total_val
  total = 0
  @items.each do |item|
    total += item.price
  end
  total
end
def to_s
  "The #{@name} is #{@width} X #{@length}"
end
end 
=begin
room1 = Room.new("living_room", 12, 10)
tv = Item.new("TV","sliver",156)
couch = Item.new("couch","brown",300)
p room1.to_s
room1.items << tv
room1.items << couch
p room1.name.upcase 
p room1.items
p room1.total_val
=end 