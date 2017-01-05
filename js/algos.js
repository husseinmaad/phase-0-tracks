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
Check_longest_string(["long phrase","longest phrase","longer phrase"]);
Check_longest_string(["Mike","Hussein","Emmanuel"]);


function Check_match_key(obj1,obj2)
{
  var count = 0
    for (var key1 in obj1) 
  {
    for (var key2 in obj2)
    {
      if(key1 == key2)
      {
        count += 1;
      }
    }
  }
   if (count > 0)
   {
    return true;
   }
   else
   {
    return false;
   }
}

function Rundom_string(num)
{
  string = "absdefghigklmnopqrstu";
  output = [];
  temp = '';
  for (var i= 0; i< num; i++)
  {
    temp = string.charAt(Math.random() * string.length); 
    output.push(temp);
  }
  return output;
}
