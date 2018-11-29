function fizzBuzz(bank) {
  for (i = 0; i <= bank; i++) {
    if (i % 3 === 0 && i % 5 === 0) {
      console.log(i + " FizzBuzz")
    } else if ( i % 3 === 0) {
      console.log(i + " Fizz")
    } else if ( i % 5 === 0 ) {
      console.log(i + " Buzz")
    } else {
      console.log(i)
    }
  }
}

fizzBuzz(100)