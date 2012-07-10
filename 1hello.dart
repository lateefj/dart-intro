/* 
Why I dream of a new language for the web?
Legacy: Shipped in 1995 as a competitor to M$ VB, lets just say the bar was not very high IMO. 

Namespace / packaging: python import this "Namespaces are one honking great idea -- let's do more of those!". Python has namspaces right but still working on getting the packaging right. As a replacement for namepsace and packaging requirejs does an impressive job however littering code with dependency information is pretty silly compared to letting a computer do it.

Coffeescript: Love the simplified syntax. It really is a great language but seems to gloss over a lot of the issues with javascript. Example from my code last week::
for c, i in number.split '' # IE7 Hack because strings suck in javascript sould be for c in number

GWT: From the ground up GWT is design to resolve a lot of the issues associated with building a web application. Ranging from cross browser compatability to sprites. Java has a massive set of downsides mainly with enourmous developer effort. For Google scale projects its great however there are few companies building for that scale so it just ends up a lot of effort. (By and large it has been Javatized so not very web friendly).

Could starting over with 20 years of web app experience produce a better language? Lets see...
*/

// Fib sequence code nothing to see here really besides lots o' braces
fib(n) {  // Not having to type 'function' +1 and another +1 for not having to give a type
  if (n == 1) {
    return 1;
  } else if (n == 0) {
    return 0;
  } else {
    return fib(n-1) + fib(n-2);
  }
}
// Decided how many runs to do
int runFib(int runs) { // Type declared actually provides some documentation
  int value = 0;
  // I can't find a range even though great blog on how to build on http://blog.lassus.se/2011/11/lets-create-us-some-dart-ranges.html
  // If you have this library it would be
  // for(int i in range(0, runs)) {
  // This is javascripty version
  // for (var i=0; i< runs; i++) {  
  // With types
  for (int i=0; i< runs; i++) {  
    value = fib(i);
  }
  return value;
}

main() {
  print("Need to download and install from http://www.dartlang.org/ first!");
  int runs = 35; 
  var value = runFib(runs);
  print("Hello fib of $runs runs is $value"); // Like template rendering that is good stuff
  print("You might try to compare running it with type checking (time dart --enable_type_checks 1hello.dart)");
}
// Libraries are nice to have static typeing for large applications. For small apps it is a big head ache so +1 on best of both worlds 
