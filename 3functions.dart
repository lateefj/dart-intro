int twice(int n) =>  n * 2; // Inline function hmm wonder if we expect lots o' async callbacks?

bool isHappy(String v) {
  if(v.toLowerCase() == 'happy') {
    return true;
  }
  return false;
}

main() {
  int d = twice(2); 
  if(isHappy('HAPPY')) {
    print('Terse function defination anyway'); // Does this mean no more console.log?
  }
}
