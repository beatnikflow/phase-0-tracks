// * RELEASE 0 *

// Write a function that takes an array of words or phrases and returns the longest word or phrase in the array.

// STEPS:
// - Declare an array of words
// - Create a function that accesses the array and uses a length method to find out which word is the longest.
// - Call the function to return the longest word.
// - Add driver code that tests the function on a few arrays.

// ------------------------------------------------------------------------ //




// wordArray = ["tacos", "burritos", "chimichangas", "enchiladas", "nachos"];
// longestWord(wordArray);

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