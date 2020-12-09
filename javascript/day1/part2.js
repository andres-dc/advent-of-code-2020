// https://adventofcode.com/2020/day/1

const fs = require('fs');
const path = require('path');
const process = require('process');

const input = `${path.resolve(process.cwd())}/input`;

fs.readFile(input, 'utf8', (e, data) => {
  if (e) throw err;

  const lines = data.split(/\r?\n/);

  const numbers = lines.map((num) => Number(num));

  numbers.forEach((num1, i) => {
    tempArr1 = numbers.slice(i + 1);

    tempArr1.forEach((num2, j) => {
      tempArr2 = tempArr1.slice(j + 1);

      tempArr2.forEach((num3) => {
        if (num1 + num2 + num3 == 2020) console.log(num1 * num2 * num3);
      });
    });
  });
});

// 246191688
