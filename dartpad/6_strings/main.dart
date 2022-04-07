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
        title: const Text(
            ' Variables are the first concept to master in any programming language'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
                'See your first variable in the console as well as displayed in the app'),
            Text(myFirstVariable),
          ],
        ),
      ),
    );
  }
}
