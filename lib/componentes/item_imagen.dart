// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, deprecated_member_use


import 'package:flutter/material.dart';

class ItemImg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.network(
                'https://i.imgur.com/Be6ZKRY.jpg',
                width: 100.0,
                fit: BoxFit.cover,
               ),
        SizedBox(width: 10.0,)
      ],
      
    );
  }
}