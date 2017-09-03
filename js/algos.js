// * RELEASE 0 *

// Write a function that takes an array of words or phrases and returns the longest word or phrase in the array.

// STEPS:
// - Declare an array of words
// - Create a function that accesses the array and uses a length method to find out which word is the longest.
// - Call the function to return the longest word.
// - Add driver code that tests the function on a few arrays.

// ------------------------------------------------------------------------ //

function longestWord() {
  var wordArray = ["tacos", "burritos", "chimichangas", "enchiladas", "nachos"];
  var longest = wordArray[0];

  for (var i = 0; i < wordArray.length; i++) {
    if (wordArray[i].length > longest.length) {

      longest = wordArray[i];
    }
   }
   return longest;
  }

longestWord();

// ------------------------------------------------

// * RELEASE 1 *

// Write a function that takes two objects and checks to see if they have at least one key-value pair.

// STEPS:
// - Create function
// - Create 2 objects to compare that have at least one same key-value pair.
// - When function is called and 2 objects are passed as a parameter, the function is evaluated to true.

// ------------------------------------------------

function mushroomObject(object1, object2) {

    // console.log(object1.species);

    if (object1.species == object2.species || object1.genus == object2.genus) {
        return true;
    }
    return false;
}

mushroomObject({species: 'Muscaria', genus: 'Amanita'}, {species: 'Pantherina', genus: 'Amanita'})

// -------------------------------------------------

// * RELEASE 2 *

// Write a function that takes an integer for length and builds and returns an array of strings of the given length.
// - The words should be random varying length with a minimum of 1 letter to a maximum of 10 letters.
// -Add driver code that does the following 10 times: generates an array, prints the array, and feeds the array to your longest word function and prints the result.

// STEPS:
// - Create a function that takes a number in as it's parameter.
// - Create an empty array.
// - Create a string of alphabet letters.
// - Create a for loop to create a new string every time.
//    - Inside the for loop, use a random number generator method to get a  random string length between 1 and 10.
//    - Create an empty string
//    - Nest another loop inside the loop that generates a random character from the alphabet string using the random number generator method as the alphabet's index.
//    - Set the empty str equal to itself plus the new random character.
//    - Outside the nested loop but still within the main loop, push the string to the word array.
// - Add driver code to test the function.

// -----------------------------------------------------------------

function randomWord(num) {
  wordArray = [];
  var alphaString = "abcdefghijklmnopqrstuvwxyz";

  for (var i = 0; i < num; i++) {
    var randomStringLength = Math.floor((Math.random() * 10) + 1);
    var str = "";
    for (var x = 0; x < randomStringLength; x++) {
      var randomChar = alphaString[Math.floor((Math.random() * 26) + 1) - 1];
      str = str + randomChar
    }
    wordArray.push(str);
  }
  return wordArray;
}

// * Test randomWord function
// randomWord(20);
// randomWord(5);
// randomWord(11);

function longestWord() {
  var longest = wordArray[0];

  for (var i = 0; i < wordArray.length; i++) {
    if (wordArray[i].length > longest.length) {

      longest = wordArray[i];
    }
  }
  return longest;
  }

// DRIVER CODE //
var times = 10;
  for (var i = 0; i < times; i++) {
    console.log(randomWord(5));
    console.log(longestWord());
  }