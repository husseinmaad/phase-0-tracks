var colors = ["red", "blue", "green", "yellow"]
var names = ["Bill", "Ed", "Mack", "Ned"]

colors.push("pink");
names.push("Chad");

 var horse = {} ;

 for (var k=0; k < names.length; k++)
 {
   horse[names[k]] = colors[k];
 }
 console.log(horse)