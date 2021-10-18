// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class ItemRedondeado extends StatelessWidget {
 @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(

          alignment: AlignmentDirectional.bottomCenter,

          children: [
            Container(
              height: 110.0,
              width: 110.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(110.0) ,
                border: Border.all(
                  color: Colors.yellow,
                  width: 2.0,
                ),
              ),
              child: ClipOval(
                child: Image.network(
                  'https://blog.pepeganga.com/wp-content/uploads/2019/03/familia-feliz-jugando-piezas-rompecabezas-hija_23-2148045533-1.jpg',
                   fit: BoxFit.cover,
                ),
              ),
            ),
            // ignore: avoid_unnecessary_containers
            const Text(
                    'Avengers',
                    style: TextStyle( 
                                color: Colors.white,
                                fontSize: 20.0,

                    ),
              ),
          ],
        ),
        const SizedBox(width: 10.0,),
      ],
    );
  }

}
  
