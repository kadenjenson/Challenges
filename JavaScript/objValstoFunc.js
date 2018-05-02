const blog = {
	title: "My magnificiant post",
	summary: "Meat of the post"
}

const openGraphMetadata = ({ title, summary = "A new post is up today" }) => {
	console.log(`
		og-title=${title}
		og-description=${summary}
	`);
}

openGraphMetadata(blog);

// If the "blog" object has the summary taken away (as if a blog didn't require a summary), it would submit placeholder text in its place