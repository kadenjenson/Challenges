function Invoice(subTotal) {
  this.taxRate = 0.06;
  this.subTotal = subTotal;

  this.total = setInterval(() => {
    console.log((this.taxRate * this.subTotal) + this.subTotal);
    // console.log(this);
  }, 2000);
}

const inv = new Invoice(200);
console.log(inv.total);

//For running in the terminal, line 12 needs to be as is in order to run in the command line. If running in a normal console, syntax would be "inv.total();"