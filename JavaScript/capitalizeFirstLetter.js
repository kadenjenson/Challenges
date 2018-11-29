function cap(str) {
  str = str.split(" ");

  for (i = 0, x = str.length; i < x; i++ ) {
    console.log(str[i])
    console.log(str[i].substr(1))
    str[i] = str[i][0].toUpperCase() + str[i].substr(1);
  }
  return str.join(" ");
}

console.log(cap("you are the best developer out there"))