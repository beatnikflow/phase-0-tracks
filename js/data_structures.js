
// Create a hash that stores the information from both arrays.
// Create a loop that iterate through one of the arrays and set those as keys, and the other one set as values. Keys will be horses, colors will be values.



var colors = ["orange", "purple", "indigo", "aquamarine"];
var horses = ["Seabiscuit", "Merlin", "Black Beauty", "Uno Mas"];

colors.push("teal");
horses.push("East Side");

var horseObject = {};

for (var i = 0; i < horses.length; i++) {
  horseObject[horses[i]] = colors[i]
}

console.log(colors)
console.log(horses)
console.log(horseObject)

//Make a car constructor function
//Steps: Give the car properties of various data types
//Step: Give it a function property

function Car(color, year, isConvertible){

  this.color = color;
  this.year = year;
  this.isConvertible = isConvertible;

  this.honk = function() { console.log("BEEP!"); };

}


//Driver: Make cars
var ourCar = new Car("red", 1965, true);
ourCar.honk();
console.log(ourCar);
var ourCar2 = new Car("red", 1935, true);
var ourCar3 = new Car("orange", 1925, true);
var ourCar4 = new Car("blue", 2005, false);

console.log(ourCar2);
console.log(ourCar3);
console.log(ourCar4);
ourCar3.honk();
ourCar3.honk();
ourCar3.honk();
ourCar3.honk();

