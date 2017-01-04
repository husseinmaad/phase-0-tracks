//create new var to hold the new string 
// start for loop to loop through the string length and increment it by one starting 
// from the end of the string 
// save each string char in the new string 


function reverse(str) 
{
var reverse_str = '';
  for (var i = str.length - 1; i >= 0; i--)
    reverse_str += str[i];
  return reverse_str;
}
reverse("hello")