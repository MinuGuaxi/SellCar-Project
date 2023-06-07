import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

void _incrementCounter() {
  setState(() {
    _counter++;
  });
}

@override
 Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      leading: IconButton(
      icon: Icon(Icons.menu),
        tooltip: 'Menu de navegação',
      onPressed: null,
      ),
      title: Text('Sellcar'),
      titleTextStyle: TextStyle(color: Colors.black),
      backgroundColor: Colors.yellowAccent,
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Vezes que o botão foi apertado',),
          Text('$_counter', style: Theme.of(context).textTheme.displaySmall,),
        ],
      ),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: _incrementCounter,
      child: Icon(Icons.add),
      backgroundColor: Colors.green,
    ),
    bottomNavigationBar: BottomAppBar(
      color: Colors.yellowAccent,
      child: Container(
        height: 100,
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Row(
            children: <Widget>[
              IconButton(
                  icon: Icon(Icons.add_box, color: Colors.black),
                  onPressed: (){
                    alert('Adicionei');
                  }
              ),
              IconButton(
                  icon: Icon(Icons.add_a_photo, color: Colors.black),
                onPressed: () {
                    alert('Add a foto');
                }
              )
            ],
          ),
        )
      ),
    ),
  );
 }
}
void alert(String message) {
  print(message);
}