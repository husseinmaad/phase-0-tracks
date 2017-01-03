#House class
# attr:
# rooms (collection of rooms)
# methods:
# getter from rooms
#add room (only allows up to 10 rooms)
#square_footage (adds up to the square footage and return integer)
# total value adds up the value of the items in the room
#to_s overriding
require_relative "room"
require_relative "item"

class House
  attr_reader :rooms
  def initialize
    @rooms = []
  end 

  def add_room(room)
    if @rooms.length <= 10
      @rooms << room
      true
    else
      false
    end 
  end 
  def to_s
    house_str = ""
    @rooms.each do |room|
      house_str << room.to_s.upcase
      house_str << "\n"
      room.items.each do |item|
        house_str << item.to_s
        house_str << "\n"
      end 
      house_str << "\n"
    end
    house_str
  end 
   def total_value
    total = 0
    @rooms.each do |room|
      total += room.total_val
    end
    total
  end 
  def squar_footage
    sq_footage = 0 
      @rooms.each do |room|
        sq_footage += (room.length * room.width)
      end 
    sq_footage
  end 
end 
house = House.new

room1 = Room.new("living_room", 10, 10)
tv = Item.new("TV","sliver",150)
couch = Item.new("couch","brown",300)
room1.items << tv
room1.items << couch
house.add_room(room1)
room2 = Room.new("office", 10, 10)
table = Item.new("Table","black",80)
lamp = Item.new("Table_Lamp","sliver",50)
room2.items << table
room2.items << lamp
house.add_room(room2)
puts house
puts "The total cost of the items in the rooms: #{house.total_value} $"
puts "The total squar_footage of the house is: #{house.squar_footage} sqf"