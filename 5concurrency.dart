// Check http://www.dartlang.org/docs/library-tour/#dartisolate---concurrency-with-isolates

#import('dart:isolate');
randomPrint() {
  print("This is random");
}
main() {
  spawnFunction(randomPrint);
  spawnFunction(randomPrint);
}
