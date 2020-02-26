import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(title: 'Aprendendo Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;
  @override

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text(this.title),),
      body: Center(child: Text('Hello World!',)),
    );
  }
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter(){
    setState((){
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Olá Mundo!',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
       mainAxisAlignment: MainAxisAlignment.end,
       children: <Widget>[
         FloatingActionButton(
           onPressed: _incrementCounter,
           tooltip: 'Increment',
           child: Icon(Icons.add),
         ),
         SizedBox(
           width: 10.0,
         ),
         FloatingActionButton(
           onPressed: _decrementCounter,
           tooltip: 'Decrement',
           child: Icon(Icons.remove),
         ),
       ],
     ),
      
    );
  }
}


