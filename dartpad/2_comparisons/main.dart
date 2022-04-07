import 'package:flutter/material.dart';

var myFirstVariable;
void main() {
//your sandbox goes here
  var less = 1 < 90;
  print(less);
  myFirstVariable = less;
//your sandbox ends here

  runApp(MaterialApp(home: ExampleScreen()));
}

class ExampleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(' You can play with a few comparisons in dart'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
                'You know how to display your first variable in the console as well as in the app : '),
            Text(myFirstVariable.toString()),
          ],
        ),
      ),
    );
  }
}
