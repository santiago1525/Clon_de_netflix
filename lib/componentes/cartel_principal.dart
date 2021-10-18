// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, deprecated_member_use

import 'package:clone_netflix/componentes/nav_bar_superior.dart';
import 'package:flutter/material.dart';

class CartelPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        cabecera(),
        infoSerie(),
        botonera(),
      ],
    );
  }
}

Widget cabecera() {
  return Stack(
          children: [
            Image.network('https://www.onepercentculture.com/wp-content/uploads/2018/10/elite.jpg',
            height: 350.0,
            fit: BoxFit.cover,
            ),
            Container(
              width: double.infinity,
              height: 350.0,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  // ignore: prefer_const_literals_to_create_immutables
                  colors: [
                    Colors.black38,
                    Colors.black,
                  ]
                )
               ),
            ),
            SafeArea(child:NavBarSuperior())
          ] 
        );
}

Widget infoSerie() {
  return Row(
     mainAxisAlignment: MainAxisAlignment.center,
    // ignore: prefer_const_literals_to_create_immutables
    children: [
      Text(
        'Telenovelesco', 
      style: TextStyle(color: Colors.white, 
      fontSize: 10.0,)
      ),
      SizedBox(width: 6.0,),  //Espacio de 6.0
      Icon(Icons.fiber_manual_record, color: Colors.red, size: 5.0),  // Icono Redondo
      SizedBox(width: 6.0,),  //Espacio de 6.0
      Text(
        'Suspenso Insostenible', 
      style: TextStyle(color: Colors.white, 
      fontSize: 10.0,)
      ),
      SizedBox(width: 6.0,),  //Espacio de 6.0
      Icon(Icons.fiber_manual_record, color: Colors.red, size: 5.0),  // Icono Redondo
      SizedBox(width: 6.0,),  //Espacio de 6.0
      Text(
        'De suspenso', 
      style: TextStyle(color: Colors.white, 
      fontSize: 10.0,)
      ),
      SizedBox(width: 6.0,),  //Espacio de 6.0  
      Icon(Icons.fiber_manual_record, color: Colors.red, size: 5.0),  // Icono Redondo
      SizedBox(width: 6.0,),  //Espacio de 6.0  
      Text(
        'Adoles', 
      style: TextStyle(color: Colors.white, 
      fontSize: 10.0,)
      ),
    ],
    );
}

Widget botonera() {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical:15.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column (
          children: const [
           Icon(Icons.check, color: Colors.white),
          SizedBox(height: 3.0,),
           Text('Mi lista', style: TextStyle(color: Colors.white, fontSize: 8.0),),
          ],
        ),
       
        FlatButton.icon(
          onPressed: (){}, 
          color: Colors.white,
          icon: Icon(Icons.play_arrow, color: Colors.black, size: 30.0,), 
          label: Text('Reproducir')),
        Column (
          children: const [
           Icon(Icons.info_outline, color: Colors.white),
           SizedBox(height: 3.0,),
           Text('Información', style: TextStyle(color: Colors.white, fontSize: 8.0),),
          ],
        ),
        
        
      ],
    ),
  );
}