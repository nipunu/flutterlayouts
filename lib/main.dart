import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.amber,
        accentColor: Colors.green,
        textTheme: TextTheme(
          bodyText2: TextStyle(
            fontStyle: FontStyle.italic,
            fontSize: 24,          
          )
        )
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Building Layouts with Flutter'),
        ),
        body: Center(
          child: Text('Hello Flutter Layouts',
          style: TextStyle(fontSize: 25),
          ),          
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.lightbulb_outline),
          onPressed: (){
            print('Hello');
          },
        ),
        // bottomNavigationBar: BottomAppBar(
        //   child:IconButton(icon: Icon(Icons.home),onPressed: null),            
        // ),
        persistentFooterButtons: <Widget>[
          IconButton(
            icon: Icon(Icons.add_comment), 
            onPressed:(){},
          ),
           IconButton(
            icon: Icon(Icons.add_alarm), 
            onPressed:(){},
          ), IconButton(
            icon: Icon(Icons.add_location), 
            onPressed:(){},
          )
        ],
        ),
    );
  }
}

