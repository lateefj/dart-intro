// Check http://www.dartlang.org/docs/library-tour/#dartisolate---concurrency-with-isolates
#import('dart:isolate'); // So concurrency is just libarary worth I mean in the days of milticore phones it is not worth a keywrod?
int sentCount = 0; // Simple counter for tracking number of message printed

// Keep track of number of messages
printMessage(String msg) {
    sentCount++;
    print("Message ($sentCount) recieved:\n $msg");
}

// Function that needs no input
sayHello() {
  printMessage("hello!");
}

// Function that prints out whatever message is sent it
echoMessage() {
  port.receive((String msg, SendPort reply) { // Magic variable name 'port'? Is it a library or keyword?
    printMessage("echoMessage: $msg");
  });
}

// Function that prints the mssage and returns the count
messageCount() {
  port.receive((String msg, SendPort reply) { // Magic variable name 'port'? Is it a library or keyword?
    printMessage(msg);
    reply.send(sentCount);
  });
}
main() {
  // First just run something in the background
  spawnFunction(sayHello); 
  // Now let send the thing we are running some type of data
  SendPort oneWay = spawnFunction(echoMessage);
  oneWay.send("Unix socket model not bad kind zeromq ish...");
  // Ok now wait for a reply
  SendPort twoWay = spawnFunction(messageCount);
  twoWay.call("Not sure what we are gaining by using this syntax instead of some magic wrapping").then((int count) { // Nice to be able to declare the type returning
    print("Total messages is $count");
    print("Expected the $count to be 3 right?"); // Isolates as in isolated variables form each other. Need to pass any data back and for modification
  });

}

// Things could change but concurrency is pretty much a reality in programming that was not around when Javascript first came out. Why this is not a primitive core part of the language is behond me this isn't craptastic but seem pretty half backed for a language of this decade. 
