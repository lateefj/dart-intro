

main() {
  print("Lists and maps are good built in types just with wordy method names");
  var l = [1, 2, 4]; // Nothing to see here
  print("Need to enabled asserts at command line (really I mean really) time dart --enable_type_checks --enable_asserts 2lists-and-maps.dart");
  assert(l.length == 3); // assert as buitling +1 
  List<int> javaListish = [1, 2, 3]; // We can statically type Javaisms with generikz
  assert(javaListish.length == 3); // Javaishy

  for(var jl in javaListish) { // var is required I mean really! (could be int)
    print("$jl +1 'in' and built in string templates +1");
  }
  var m = {'foo':'bar', 'python':'cooler', 'learn':'go'};
  /* Sad this doesn't work
  for(var k, v in m) {
    print('$k, $v wouldn\'t it be nice if this worked');
  }
  */
  m.forEach((k, v) => print("$k, $v I guess this isn't so bad")); // Anonymous functions +1
  var pythonKey = "python";
  var cooler = m[pythonKey];
  String learnKey = "learn";
  String go = m[learnKey];
  print("Don't forget $pythonKey is $cooler and $learnKey $go!");
  // Why captial 's' in String since it is a built in type like everythign else!  
  Map<String, String> javaMapish = {'foo':'bar', 'python':'cooler', 'learn':'golang'}; 
  String notAllBad = javaMapish['foo']; // For the most useful datastructure it isn't all long method names +1
}
