import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    final ButtonStyle style =
    ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

    //Botones
    final button1 = new ElevatedButton(
      child: Text("Ir a la pagina inicio"),
      style: ElevatedButton.styleFrom(
          primary: Colors.deepOrange,
          onPrimary: Colors.white,
          elevation: 5,
          shadowColor: Colors.black
      ),

      onPressed: (){
        Navigator.pushNamed(context, "/productos");
        print("Ir al home");
      },
      onLongPress: (){
        print("Long hello raiced button");
      },
    );
    final button2 = IconButton(
      icon: Icon(
        Icons.add_reaction,
        size: 20,
        color: Colors.red,
      ),
      tooltip:'Presioname',
      onPressed: (){
        Navigator.pushNamed(context, "/productos");
      },
    );

    final button3 = ElevatedButton.icon(
      icon: Icon(
        Icons.favorite,
        color: Colors.white,
        size: 20.0,
      ),
      label: Text('Boton con iconos'),
      onPressed: () {
        Navigator.pushNamed(context, "second");
      },
      style: ElevatedButton.styleFrom(
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(20.0),
        ),
      ),
    );

    return Scaffold(
        appBar: AppBar(
          title: const Text('Widgets Flutter'),
          actions: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.person,
                color: Colors.tealAccent,
                size: 20.0,
              ),
              tooltip: 'Información del perfil',
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Muestra el perfil de usuario')));
              },
            ),
            IconButton(
              icon: const Icon(
                Icons.person_pin_circle_rounded,
                color: Colors.tealAccent,
                size: 20.0,
              ),
              tooltip: 'Información del perfil',
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Muestra la ubicación')));
              },
            ),
            IconButton(
              icon: const Icon(Icons.navigate_next),
              tooltip: 'Go to the next page',
              onPressed: () {
                Navigator.push(context, MaterialPageRoute<void>(
                  builder: (BuildContext context) {
                    return Scaffold(
                      appBar: AppBar(
                        title: const Text('Next page'),
                      ),
                      body: const Center(
                        child: Text(
                          'This is the next page',
                          style: TextStyle(fontSize: 24),
                        ),
                      ),
                    );
                  },
                ));
              },
            ),
          ],
        ),
        body: Center(
          child:Container(
            child: Column(
              children: <Widget>[
                Text('Botonera'),
                button1,
                button2,
                Text('Ingresar al formulario'),
                button3
              ],
            ),
          ),
        )
    );
  }
}