// 1. Write a function for calculating percentage of 4 subjects.
function percentageCalculate(){
  var result = 0
  var length = arguments.length;
  for (var i = 0; i < length; i++) {
     result += arguments[i];
  }
  return result/length;
}

// 2. Write a function which - make a Simple Calculator to Add, Subtract, Multiply or Divide    Using switch...case

function simpleCalculator(operator,number1,number2){
  function plus(number1,number2) {
    return (number1 + number2);
  }
  function minus(number1,number2) {
    return (number1 - number2);
  }
  function multiply(number1,number2) {
    return (number1 * number2);
  }
  function divide(number1,number2) {
    return (number1 / number2);
  }
  var c = 0;
  switch(operator.toString()) {
    case '+':
      c = plus(number1,number2)
      break;
    case '-':
      c = minus(number1,number2)
      break;
    case '*':
      c = multiply(number1,number2)
      break;
    case '/':
      c = divide(number1,number2)
      break;
    default:
      c = "Don't really know..";
  }
  return c
}

// 3. Write a function which generates Multiplication Table of a number

function multiplicationTable(number){
  var n = 1;
  while(n <= 10){
    console.log(number*n);
    n += 1;
  }
}

// 4. Write a function for finding number of Digits in a Number

function countDigit(number){
  return number.toString().length;
}

// 5. Write a function to calculate average of integer array.

function avarage(arr){
  var sum = arr.reduce((a, b) => a + b, 0);
  return sum/arr.length;
}

// 6. Write a function to find largest number in an integer array.

function lageNumber(arr){
  return Math.max(...arr);
}

// 7. Write a function to add elements of two arrays.

function addTwoArray(arr1,arr2){
  var sum = arr1.map(function (num, idx) {
    return num + arr2[idx];
  });
  return sum
}

// 8. Write a function to reverse array elements.

function reverseArray(arr){
  return arr.reverse()
}