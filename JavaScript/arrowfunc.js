// Function Declaration
function fullName(fName, lName) {
  console.log(`${fName} ${lName}`);
}
fullName('Kaden', 'Jenson');

// Function Expression
fullName = function (fName, lName) {
  console.log(`${fName} ${lName}`);
}
fullName('Kim', 'Jenson');

// Worlds Simplest Arrow Function
helloWorld = () => { console.log("Hi there"); }
helloWorld();

//
firstName = fName => { console.log(fName.toUpperCase()); }
firstName('Edwin');

// Function that does not need to 
fullName = (fName, lName) => {
	console.log(`${fName} ${lName}`);
}
fullName('Kaden', 'Jenson');