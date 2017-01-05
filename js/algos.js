function Check_longest_string(arr)
{
  var longest_w = " ";
  var len = 0;
    for (var i = 0; i < arr.length; i++) 
    {
      if (arr[i].length > len) 
      {
        len = arr[i].length;
        longest_w = arr[i];
      } 
    }
    return longest_w;
}