fib(int n) {
  if (n == 1) {
    return 1;
  } else if (n == 0) {
    return 0;
  } else {
    return fib(n-1) + fib(n-2);
  }
}
runFib(runs) {
  int value = 0;
  for (var i=0; i< runs; i++) {
    value = fib(i);
  }
  return value;
}

main() {
  int runs = 40; 
  var value = runFib(runs);
  print("Hello fib of $runs runs is $value");
}
// We don't have to use the static type definition to declare variables. 
