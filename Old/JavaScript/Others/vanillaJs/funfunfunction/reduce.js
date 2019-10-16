//
var orders = [
  { amount: 234 },
  { amount: 423 },
  { amount: 523 },
  { amount: 123 }
];

// using `for loop`
var totalAmount = 0;

for (var i = 0; i < orders.length; i++) {
  totalAmount += orders[i].amount;
}

orders;
totalAmount;

// with `.reduce()`
var totalAmnt = orders.reduce((sum, cur) => {
  return sum + cur.amount;
}, 0);

totalAmnt;
