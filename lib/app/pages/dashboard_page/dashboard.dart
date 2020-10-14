/*
 * Name: Dorivaldo Vicente dos Santos
 * E-mail: dorivaldodossantos2000@gmail.com
 * Phone: (+244) 944 55 76 10 
 * WhatsApp: (+244) 992 22 82 30
 * Github: https://github.com/DVS2000
 * Site: https://dorivaldodossantos.herokuapp.com
 */

import 'package:ecommerce_app/app/pages/dashboard_page/components/card_produt_component.dart';
import 'package:ecommerce_app/app/widgets/gradient_icon_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/app/utils/size_context_util.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30,),
          
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    GradientIcon(CupertinoIcons.text_alignleft, 25),
                    Spacer(),
                    GradientIcon(CupertinoIcons.search, 25),
                    GradientIcon(CupertinoIcons.shopping_cart, 25),
                  ],
                ),
                SizedBox(height: 10,),
                Text(
                  " Buy Best Products From\n All Of The World",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  " Lorem Ipsum is simply dummy text of the printing and\n typesetting industry.",
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
       
          Spacer(),
          Container(
            height: context.sizeDevice.height * .35,

            child: ListView(
              padding: EdgeInsets.only(left: 20),
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: List.generate(4, (index) => CardProdutComponent(index: index,),)
            ),
          ),
          Spacer()
        ],
      )
    );
  }
}
