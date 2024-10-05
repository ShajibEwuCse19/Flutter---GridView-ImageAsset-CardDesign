import 'dart:io';

void main() {
  List<String> splitName = ['John', 'Doe', 'Smith'];

  for (int i = 0; i < splitName.length; i++) {
    stdout.write('${splitName[i]} ');
  }
  print("");

  int n = 50;
  print((n>5) ? "n greater than five" : "n = 5");

  List<String> footballplayers=['Ronaldo','Messi','Neymar','Hazard'];
  footballplayers.reversed;
  footballplayers.forEach((it) => print('$it '));
  
  try {
    print(10/0);
  }
  catch(ex) {
    print("Exception = $ex ");
  }

  var square = (int num) {
    return num * num;
  };

  print(square(5));
}
