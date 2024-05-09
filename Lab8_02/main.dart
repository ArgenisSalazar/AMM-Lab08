import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => PrimeraPantalla(),
        "/segundapagina": (context) => SegundaPantalla(),
      },
    );
  }
}

class PrimeraPantalla extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Primera Pantalla'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.pushNamed(context, "/segundapagina");
          },
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.blue, backgroundColor: Colors.orange,
          ),
          child: Text('Siguiente'),
        ),
      ),
    );
  }
}


class SegundaPantalla extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Segunda Pantalla'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.pop(context);
          },
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.red, backgroundColor: Colors.green,
          ),
          child: Text('Atras'),
        ),
      ),
    );
  }
}
