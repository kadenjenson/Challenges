class Instructor {
	constructor({ name, role = 'Assistant TO the regional manager' }) {
		this.name = name;
		this.role = role;
	}

	renderDetails() {
		console.log(`${this.name}: ${this.role}`)
	}

	static helloWorld() {
		console.log('Hi there');
	}

	static canTeach(instructor) {
		return (instructor.role === 'classroom');
	}
}

// Instructor.helloWorld();

const dwight = new Instructor({ name: 'Dwight Shrute'});
console.log(
	`${dwight.name} can teach: ${Instructor.canTeach(dwight)}`
	);

const kaden = new Instructor({ name: 'Kaden', role: 'classroom' });
console.log(
	`${kaden.name} can teach: ${Instructor.canTeach(kaden)}`
	);

// const jon = new Instructor({ name: 'Jon Snow', role: 'Rightful heir to the throne'});
// dwight.renderDetails();
// jon.renderDetails();