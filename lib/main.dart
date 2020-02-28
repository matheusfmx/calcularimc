import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora de IMC'),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Center(
              child: Icon(
                Icons.account_circle,
                size: 115,
                color: Colors.blue,
              ),
            ),
          ),
          TextField(
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.red,
            ),
            decoration: InputDecoration(
              labelText: 'Peso (kg)',
              labelStyle: TextStyle(
                color: Colors.blue,
              ),
              fillColor: Colors.red,
              hintStyle: TextStyle(
                fontSize: 25.0,
              ),
            ),
          ),
          TextField(
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.red,
            ),
            decoration: InputDecoration(
              labelText: 'Altura (cm)',
              labelStyle: TextStyle(
                color: Colors.blue,
              ),
              fillColor: Colors.red,
              hintStyle: TextStyle(
                fontSize: 25.0,
              ),
            ),
          ),
          Container(
            width: 350,
            child: RaisedButton(
              onPressed: () {},
              color: Colors.blue,
              child: Text(
                'Calcular',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Text('Informe seus daods!'),
        ],
      ),
    );
  }
}
