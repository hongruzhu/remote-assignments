function max(numbers) {
  let maxNum = numbers[0];
  for (i = 1; i < numbers.length; i++) {
    if (numbers[i] > maxNum) {
      maxNum = numbers[i];
    }
  }
  return maxNum;
}

function findPosition(numbers, target) {
  let position = "";
  for (i = 0; i < numbers.length; i++) {
    if (numbers[i] === target) {
      position = i;
      break;
    } else {
      position = -1;
    }
  }
  return position;
}
