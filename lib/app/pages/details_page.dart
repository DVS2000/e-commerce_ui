/*
 * Name: Dorivaldo Vicente dos Santos
 * E-mail: dorivaldodossantos2000@gmail.com
 * Phone: (+244) 944 55 76 10 
 * WhatsApp: (+244) 992 22 82 30
 * Github: https://github.com/DVS2000
 * Site: https://dorivaldodossantos.herokuapp.com
 */

import 'package:ecommerce_app/app/utils/colors_utils.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DetailsPage extends StatefulWidget {
  int index;
  DetailsPage({this.index});
  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Hero(
          tag: "background${widget.index}",
          child: Container(
            decoration: BoxDecoration(gradient: gradientPrimary),
          ),
        ),
      ),
    );
  }
}
