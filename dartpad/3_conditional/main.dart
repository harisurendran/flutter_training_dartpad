import 'package:flutter/material.dart';

var myFirstVariable;
void main() {
//your sandbox goes here
  var display = true;
  if (display) {
    print('Hello World');
  }

  myFirstVariable = display;
//your sandbox ends here

  runApp(MaterialApp(home: ExampleScreen()));
}

class ExampleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(' Conditional statements '),
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
