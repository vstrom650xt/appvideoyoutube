import 'package:flutter/material.dart';

void main() => runApp(Miapp());

class Miapp extends StatelessWidget {
  const Miapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "mi app de prueba",
      home: Inicio(),
    );
  }
}

class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(" La Barra de arriba"),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(
                20), // hace la img mas pequeña en funcion de la pantalla en q se vea
            // width: 200, // Ancho deseado de la imagen
            //   height: 200, // Alto deseado de la imagen
            child: Image.network(
              "https://www.adslzone.net/app/uploads-adslzone.net/2019/04/borrar-fondo-imagen-800x419.jpg",
              //  fit: BoxFit.cover, // Ajusta la imagen para cubrir el contenedor
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              child: ElevatedButton(
                  onPressed: () {
                    print("hola");
                  },
                  child: Text('Boton')),
            ),
          )
        ],
      ),
    );
  }
}
