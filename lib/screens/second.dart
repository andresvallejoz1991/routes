import 'package:routes/main.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Second());
}

class Second extends StatelessWidget {
  const Second({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter2',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: const Menu(title: 'Enterprise Forms'),
    );
  }
}

class FichaProducto extends StatelessWidget{
  final String name;
  final String description;
  final int price;
  final String imagen;


  const FichaProducto({required this.name, required this.description, required this.price, required this.imagen}):super();

  @override
  Widget build(BuildContext context){
    //final ButtonStyle style =
    //ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

    return Card(

        child: Container(
          height: 150,
          child: Row(
            children: <Widget>[
              Image.asset("assets/img/"+this.imagen),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(this.name, style: TextStyle(fontWeight: FontWeight.bold)),
                    Text(this.description),
                    Text("Precio: "+this.price.toString())

                  ],
                ),
              )

            ],
          ),
        )
    );
  }
}
class ListadoProductos extends StatelessWidget{
  final String titulo;
  const ListadoProductos({required this.titulo}):super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.titulo),
      ),
      body: ListView(
        children: <Widget>[
          FichaProducto(name: 'Lenovo 3', description: 'I7 500 SSS, 8va Generacion', price: 1500, imagen: 'computer.png'),
          FichaProducto(name: 'Lenovo 1', description: 'I7 500 SSS, 8va Generacion', price: 1500, imagen: 'computer.png'),
          FichaProducto(name: 'Lenovo 1', description: 'I7 500 SSS, 8va Generacion', price: 1500, imagen: 'computer.png'),
          FichaProducto(name: 'Lenovo 1', description: 'I7 500 SSS, 8va Generacion', price: 1500, imagen: 'computer.png'),
          FichaProducto(name: 'Lenovo 1', description: 'I7 500 SSS, 8va Generacion', price: 1500, imagen: 'computer.png'),
          FichaProducto(name: 'Lenovo 1', description: 'I7 500 SSS, 8va Generacion', price: 1500, imagen: 'computer.png'),
          FichaProducto(name: 'Lenovo 1', description: 'I7 500 SSS, 8va Generacion', price: 1500, imagen: 'computer.png')
        ],
      ),
    );
  }

}