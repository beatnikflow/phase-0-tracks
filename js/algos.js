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

function longestWord(wordArray) {
  wordArray = ["tacos", "burritos", "chimichangas", "enchiladas", "nachos"];
  var longest = 0;

  for (var i = 0; i < wordArray.length; i++) {
    if (wordArray[i].length > longest) {
      longest = wordArray[i];
    }
   }
  }

longestWord(wordArray);


// * RELEASE 1 *

// Write a function that takes two objects and checks to see if they have at least one key-value pair.

// STEPS:
// - Create function
// - Create 2 objects to compare that have at least one same key-value pair.
// - When function is called and 2 objects are passed as a parameter, the function is evaluated to true.

// ------------------------------------------------

function(objectSimilarity) {
  var mushroom1 = {species: 'Muscaria', genus: 'Amanita'}
  var mushroom2 = {species: 'Pantherina', genus: 'Amanita'}

  var mushSpecies = 'species';
  var mushGenus = 'genus';

  console.log(mushroom1[mushSpecies]);
  console.log(mushroom2[mushSpecies]);
  console.log(mushroom1[mushGenus]);
  console.log(mushroom2[mushGenus]);

  if (mushroom1[mushGenus] == mushroom2[mushGenus]) || (mushroom1[mushSpecies]) == mushroom2[mushSpecies];
    objectSimilarity == true
  else
    objectSimilarity == false

}

function(objectSimilarity)