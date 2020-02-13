var a = prompt("Enter the string")
var j = a.length - 1
var florval = Math.floor(a.length/2)
var aInArray = a.split("")

result = true
for(var i=0;i<florval;i++)  // i: 0,1
{

if (aInArray[i] == aInArray[j])
	{
		result= true 
		j--
	}

else { 
   	result = false
//   	console.log("not palindrome")
	 break;
	 } 
}

if(result) 
	{ 
		console.log("palindrome")
	} 
else { 
	console.log("not palindrome")
	 }