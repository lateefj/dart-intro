#import('package:range/range.dart');  
// 'pub install' is required to run first
// Not working packaging is to new
main() {
  // pubspec has configuration of range package seems like a good idea if it automagically compiles
  for(var x in range(0, 10)) {
    print('X is $x');
  }
}
