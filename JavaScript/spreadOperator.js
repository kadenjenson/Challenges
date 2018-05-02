// A spread operator is three dots followed by the var, func, word, etc. (...word)

// Combining Arrays
// let shoppingCart = [354, 2168, 783, 654];
// let newItems = [35, 873];

// shoppingCart.push(...newItems);
// console.log(shoppingCart);

// Copying Arrays without spread
// const shoppingCart = [354, 2168, 783, 654];
// const updatedCart = shoppingCart.slice();
// updatedCart.push(5);
// console.log(updatedCart);
// console.log(shoppingCart);

//Copying Arrays w spread
// const shoppingCart = [354, 2168, 783, 654];
// const updatedCart = [...shoppingCart];
// updatedCart.push(5);
// console.log(updatedCart);
// console.log(shoppingCart);

//Function Args
// const orderTotals = [5, 8, 21, 56, 81];
// console.log(Math.max(...orderTotals));

const { starter, closer, ...relievers } = {
	starter: 'Verlander',
	closer: 'Giles',
	relief_1: 'Morton',
	relief_2: 'Gregerson'
}
console.log(starter);
console.log(closer);
console.log(relievers);