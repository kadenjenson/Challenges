function Human(guess) {
	const computer = Math.ceil(Math.random() * 8);
	if (guess == computer) {
		return true;
	} else {
		return false;
	}
}

console.log(Human(3));