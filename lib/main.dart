import 'package:flutter/material.dart';
//test
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home Screen',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  // Function to be called when a button is clicked
  void _onButtonClick(String buttonName) {
    print('$buttonName clicked!');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            ElevatedButton(
              onPressed: () => _onButtonClick("Button 1"),
              child: Text('Button 1'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => _onButtonClick("Button 2"),
              child: Text('Button 2'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => _onButtonClick("Button 3"),
              child: Text('Button 3'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => _onButtonClick("Button 4"),
              child: Text('Button 4'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => _onButtonClick("Button 5"),
              child: Text('Button 5'),
            ),
          ],
        ),
      ),
    );
  }
}
