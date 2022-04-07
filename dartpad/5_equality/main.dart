import 'package:flutter/material.dart';

void main() {
  print(myFirstVariable);
  //your sandbox goes here
  var display = true;
  if (display) {
    print('Hello World');
  }

  myFirstVariable = display;
//your sandbox ends here
  runApp(MaterialApp(home: ExampleScreen()));
}

var myFirstVariable;

class ExampleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Conditional statements '),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
                'See your  variable in the console as well as displayed in the app'),
            Row(
              children: [
                Text('Here is your variable: '),
                Text(myFirstVariable.toString()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
