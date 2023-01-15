function binarySearchPosition(numbers, target) {
  let low = 0;
  let upper = numbers.length - 1;

  while (low <= upper) {
  let mid = Math.floor((low + upper) / 2);
    if (numbers[mid] < target) {
      low = mid + 1;
    } else if (numbers[mid] > target) {
      upper = mid - 1;
    } else {
      return mid;
    }
  }
}

console.log(binarySearchPosition([1, 2, 5, 6, 7], 1));
console.log(binarySearchPosition([1, 2, 5, 6, 7], 6));