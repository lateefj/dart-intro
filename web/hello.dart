#import('dart:html');

main() {
  var content = query('#content');
  content.nodes.add(new Element.html('<b>Hello</b>'));
}
