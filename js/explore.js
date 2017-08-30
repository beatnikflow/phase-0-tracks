// Pseudocode a function that takes a string as a parameter and reverses the string. reverse("hello") should return "olleh". Use terms like "for each"

// Create a function called reverse that takes a string
// function reverse(string)
// create an empty string.
// Start a for loop that iterates backwards through the string for each character.
// Return the new reversed string.
// Call the function.

// -------------------------------------- //

function reverse(string) {
  var empty_str = '';
  for (var reverse_str = string.length - 1; reverse_str >= 0; reverse_str --)
    empty_str += string[reverse_str];
  if (empty_str == empty_str) {
    console.log(empty_str); }
}

reverse("hello")
