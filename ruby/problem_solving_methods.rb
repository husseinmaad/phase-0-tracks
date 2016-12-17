# Search through an array, returning the index of a matching number
def search_array(arr, number)
  result = nil
  arr.each_index do |index|
    if number == arr[index]
      result = index
      break
    end
  end
  result
end