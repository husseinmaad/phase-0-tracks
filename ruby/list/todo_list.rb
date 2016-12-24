class TodoList

  def initialize(arr)
    @arr_list = arr
  end

  def get_items
    @arr_list
  end 

  def add_item(item)
    @arr_list << item
  end 
  
  def delete_item(item)
    @arr_list.delete(item)
  end
  
  def get_item(idx)
    @arr_list[idx]
  end 

end 