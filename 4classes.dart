// Spoiler alert the F'ed factor aka factory is going to give you bad dreams tonights

class Simple {
  int x, y;
  Simple(this.x, this.y); // Like thie 99.999% use case handler
  /*  VS
  Simple(x, y) {
    this.x = x;
    this.y = y;
  }
  */
  // Named constructors are almost useful 
  Simple.fromJson(Map json) : x = json['x'], y = json['y';
  /* Not sure I like the idea of many constructors just seems to open the door for confusion. Subclass do not inherit the superclass constructor(s) ...*/
  // Factory keyword allows for returning somethign other than an instance of a the class.. Useful for cache or maybe ORM. I would use a function I am not sure the benifit of trying to abuse a class in this manner.
  

  // Getters and setter with "property" support.
}
