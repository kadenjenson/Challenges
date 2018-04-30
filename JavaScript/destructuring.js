const apilist = [
	'https://api.dailysmarty.com/posts',
  'https://api.github.com/users/jordanhudgens/repos',
  'https://api.github.com/users/jordanhudgens'
]

const [posts, repos, profile] = apilist;
console.log(posts);
console.log(repos);
console.log(profile);

//The below snippet iterates through each element in the above array. It will store the first one in "posts". The second in "repos", etc.