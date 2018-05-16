class Instructor {
	constructor({ name, role = 'Assistant TO the regional manager' }) {
		this.name = name;
		this.role = role;
	}

	renderDetails() {
		console.log(`${this.name}: ${this.role}`)
	}
}

const dwight = new Instructor({ name: 'Dwight Shrute'});
const jon = new Instructor({ name: 'Jon Snow', role: 'Rightful heir to the throne'});
dwight.renderDetails();
jon.renderDetails();