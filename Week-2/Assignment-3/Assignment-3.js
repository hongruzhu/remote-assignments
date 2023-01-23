function count(input) {
  let count = {};
  for (let i = 0; i < input.length; i++) {
    if (count[input[i]] === undefined) {
      count[input[i]] = 1;
    } else {
      count[input[i]] += 1;
    }
  }
  return count;
}

let input1 = ["a", "b", "c", "a", "c", "a", "x"];
console.log(count(input1));
// should print {a:3, b:1, c:2, x:1}

function groupByKey(input) {
  let group = {};
  for (let i = 0; i < input.length; i++) {
    if (group[input[i].key] === undefined) {
      group[input[i].key] = input[i].value;
    } else {
      group[input[i].key] += input[i].value;
    }
  }
  return group;
}

let input2 = [
  { key: "a", value: 3 },
  { key: "b", value: 1 },
  { key: "c", value: 2 },
  { key: "a", value: 3 },
  { key: "c", value: 5 },
];
console.log(groupByKey(input2));
// should print {a:6, b:1, c:7}
