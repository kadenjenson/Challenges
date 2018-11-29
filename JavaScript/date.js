const options = { weekday: 'narrow', year: 'numeric', month: 'long', day: 'numeric' };
const today = new Date();

console.log(today.toLocaleDateString("en-US", options));