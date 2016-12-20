#GPS 2.2

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  #create empty hash
  #split the string and store it in array
  # on each item of that array assign it as a key for the has 
  # set default quantity  to the value 
  # print the list to the console [hash]
  
  # Method to add an item to a list
# input: list, item name, and optional quantity
# steps: each item in the list
        # list for that item will be equal the new value
# output:hash

# Method to remove an item from the list
# input: list and item name
# steps: delete if the item in the list if the item equal to the item name  
# output: hash

# Method to update the quantity of an item
# input: list and item_name and the new quantity
# steps: # if item name include in that list 
          # for each item and value 
            # if that item == item name 
            # set the new quantity for that name 
            # otherwise 
             # just keep the old item and value
         # Otherwise:
          # print not found and return false
# output: updated hash

# Method to print a list and make it look pretty
# input:list
# steps: put your list info
#on each item and value in the list 
# print that item and value 
# output: printed hash
  
def create_list(string)
  hash = {}
  arr_items = string.split(' ')
  arr_items.each do |item|
    hash[item] = 5
  end
  return hash
end

def add_item(list,item_name,op_quantity = 1)
  list[item_name] = op_quantity
end

def remove_item(list, item_name)
  if list.delete(item_name)
    return list
  else 
    puts "Item Not Found"
    return false
  end 
end

def update_item(list,item_name,new_quantity)
    if list.include?(item_name)
      list[item] = new_quantity
    else
      puts " Item Not Found"
      return false
    end
end

def print_list(list)
  idx = 1
  puts "Your List Info"
  puts "================"
  list.each do |item, quantity|
    puts "#{idx}. #{item} has quantity of #{quantity}"
    idx +=1
  end
end 


# test the code
new_hash = create_list("carrots apples cereal pizza")
add_item(new_hash,"mange", 4)
p new_hash

remove_item(new_hash,"appleees")
p new_hash

update_item(new_hash,"mangwwwe", 1)
p new_hash

print_list(new_hash)
