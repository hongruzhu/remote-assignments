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
