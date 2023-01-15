function countAandB(input) {
    var count = 0;
    for (var i = 0; i < input.length; i++) {
        if (input[i] == "a" || input[i] == "b") {
            count += 1;
        }
    }
    return count;
}

function toNumber(input) {
    var conversion = {
        "a": 1,
        "b": 2,
        "c": 3,
        "d": 4,
        "e": 5,
    }
    var count = [];
    for (var i = 0; i < input.length; i++) {
        count.push(conversion[input[i]]);
    }
    return count;
}