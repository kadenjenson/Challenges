const user = {
	name: 'Kaden',
	email: 'edwin@bottega.tech'
}

const renderUser = ({ name, email }) => {
	console.log(`${name}: ${email}`);
}

renderUser(user);