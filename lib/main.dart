import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clone_instagram/app.dart';

void main() {
  runApp(App());
}

class ButtonApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter Button Styles')),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextButton(
                onPressed: () {},
                child: Text('TextButton'),
              ),
              SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {},
                child: Text('ElevatedButton'),
              ),
              SizedBox(height: 8),
              OutlinedButton(
                onPressed: () {},
                child: Text('OutlinedButton'),
              ),
              SizedBox(height: 8),
              IconButton(
                icon: Icon(Icons.thumb_up),
                onPressed: () {},
              ),
              SizedBox(height: 8),
              FloatingActionButton(
                onPressed: () {},
                child: Icon(Icons.add),
              ),
              SizedBox(height: 8),
              DropdownButton<String>(
                value: 'One',
                items: <DropdownMenuItem<String>>[
                  DropdownMenuItem<String>(
                    value: 'One',
                    child: Text('One'),
                  ),
                  DropdownMenuItem<String>(
                    value: 'Two',
                    child: Text('Two'),
                  ),
                ],
                onChanged: (String? newValue) {},
              ),
              SizedBox(height: 8),
              PopupMenuButton<String>(
                onSelected: (String value) {},
                itemBuilder: (BuildContext context) {
                  return [
                    PopupMenuItem(
                      value: 'Option 1',
                      child: Text('Option 1'),
                    ),
                    PopupMenuItem(
                      value: 'Option 2',
                      child: Text('Option 2'),
                    ),
                  ];
                },
              ),
              SizedBox(height: 8),
              ButtonBar(
                children: <Widget>[
                  TextButton(
                    onPressed: () {},
                    child: Text('Button 1'),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Button 2'),
                  ),
                ],
              ),
              SizedBox(height: 8),
              CupertinoButton(
                onPressed: () {},
                child: Text('CupertinoButton'),
              ),
              CupertinoButton(
                color: CupertinoColors.black,
                onPressed: () {},
                child: Text('CupertinoButton with custom'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BorderApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter BorderRadius Example')),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.all(Radius.circular(10)), // Uniform radius
                  border: Border.all(color: Colors.blue),
                ),
                child: TextButton(
                  onPressed: null,
                  child: Text('Uniform BorderRadius'),
                ),
              ),
              SizedBox(height: 8),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(40),
                  ), // Specific corners radius
                  border: Border.all(color: Colors.blue),
                ),
                child: TextButton(
                  onPressed: null,
                  child: Text('Specific Corners BorderRadius'),
                ),
              ),
              SizedBox(height: 8),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(10), // Vertical radius
                    bottom: Radius.circular(20), // Vertical radius
                  ),
                  border: Border.all(color: Colors.blue),
                ),
                child: TextButton(
                  onPressed: null,
                  child: Text('Vertical Symmetric BorderRadius'),
                ),
              ),
              SizedBox(height: 8),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(15), // Horizontal radius
                    right: Radius.circular(25), // Horizontal radius
                  ),
                  border: Border.all(color: Colors.blue),
                ),
                child: TextButton(
                  onPressed: null,
                  child: Text('Horizontal Symmetric BorderRadius'),
                ),
              ),
              SizedBox(height: 8),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), // Circular radius
                  border: Border.all(color: Colors.blue),
                ),
                child: TextButton(
                  onPressed: null,
                  child: Text('Circular BorderRadius'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
