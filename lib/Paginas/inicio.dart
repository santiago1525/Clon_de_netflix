// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, deprecated_member_use

import 'package:clone_netflix/componentes/cartel_principal.dart';
import 'package:clone_netflix/componentes/item_imagen.dart';
import 'package:clone_netflix/componentes/item_redondeado.dart';
import 'package:flutter/material.dart';


class InicioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Colors.black,
     body: ListView (
       children: [
        CartelPrincipal(),
        listaAvances('Avances', ItemRedondeado(), 9),
        listaAvances('Tendencias', ItemImg(), 8),
        listaAvances('Mi lista', ItemImg(), 8),
        listaAvances('Comedias', ItemImg(), 8),
        listaAvances('Terror', ItemImg(), 8),
        
       ],
     ),
       bottomNavigationBar: navInferior(),
   );
  }
}

Widget listaAvances(String titulo, Widget item, int cantidad) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10.0),
    child: Column (

      crossAxisAlignment: CrossAxisAlignment.start, // Alinear horizontalmente en un column

        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 1.0, vertical: 10.0 ),
            child: Text(
                titulo, 
                style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold, 
                        )
            ),
          ),
          SizedBox(
            height: 110.0,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: cantidad,

                itemBuilder: (context, index){
                  return item;
                },
            ),
          ),
        ],
    ),
  );
}

BottomNavigationBar navInferior() {
  return BottomNavigationBar(
    backgroundColor: Colors.black,
    selectedItemColor: Colors.white,
    unselectedItemColor: Colors.white30,
    type: BottomNavigationBarType.fixed,
      // ignore: prefer_const_literals_to_create_immutables
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Inicio', style: TextStyle(fontSize: 12.0)),
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          title: Text('Buscar', style: TextStyle(fontSize: 12.0)),
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.library_music),
          title: Text('Proximamente', style: TextStyle(fontSize: 12.0)),
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.download),
          title: Text('Descargas', style: TextStyle(fontSize: 12.0)),
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.more_horiz),
          title: Text('Más', style: TextStyle(fontSize: 12.0)),
        ),

      ],
  );
}

