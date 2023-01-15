function avg(data) {
  let avg = 0;
  for (i = 0; i < data.size; i++) {
    avg += data.products[i].price / data.size;
  }
  return avg;
}

console.log(
  avg({
    size: 3,
    products: [
      { name: "Product 1", price: 100 },
      { name: "Product 2", price: 700 },
      { name: "Product 3", price: 250 },
    ],
  })
);
