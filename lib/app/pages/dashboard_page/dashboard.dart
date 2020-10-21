/*
 * Name: Dorivaldo Vicente dos Santos
 * E-mail: dorivaldodossantos2000@gmail.com
 * Phone: (+244) 944 55 76 10 
 * WhatsApp: (+244) 992 22 82 30
 * Github: https://github.com/DVS2000
 * Site: https://dorivaldodossantos.herokuapp.com
 */

import 'package:ecommerce_app/app/pages/cart_page/cart_page.dart';
import 'package:ecommerce_app/app/pages/dashboard_page/components/card_produt_component.dart';
import 'package:ecommerce_app/app/utils/colors_utils.dart';
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
                    GestureDetector(
                      onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => CartPage())
                      ),
                      child: GradientIcon(CupertinoIcons.shopping_cart, 25)
                    ),
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
            height: context.sizeDevice.height * .25,
            child: ListView(
              padding: EdgeInsets.only(left: 15),
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: List.generate(4, (index) => CardProdutComponent(index: index,),)
            ),
          ),

          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Novos Produtos"
                ),
                Spacer(),
                GradientIcon(CupertinoIcons.arrow_left, 20),
                GradientIcon(CupertinoIcons.arrow_right, 20),
              ],
            ),
          ),
          SizedBox(height: 10,),

          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Row(
              children: List.generate(2, (index) => Expanded(
                child: Card(
                  elevation: 5,
                  margin: EdgeInsets.only(right: 20),
                  shadowColor: Colors.grey.withOpacity(.3),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GradientIcon(index.isOdd ? CupertinoIcons.heart_slash : CupertinoIcons.heart, 20),
                            GradientIcon(CupertinoIcons.shopping_cart, 20),
                          ],
                        ),
                      ),
                      Image.asset(
                        !index.isOdd ? IMG_RELOGIO : IMG_CADEIRA,
                        height: 90,
                      ),

                      SizedBox(height: 10,),
                      Text("SEA-DWELLER"),
                      SizedBox(height: 5,),
                      Text("120.00 kZS"),
                      SizedBox(height: 10,),

                      !(index.isOdd)
                      ? Container(
                        height: 30,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          gradient: gradientPrimary
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "COMPRAR AGORA",
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                      : SizedBox(height: 30, width: double.infinity,)
                    ],
                  ),
                ),
              )),
            ),
          ),
          Spacer()
        ],
      ),
      bottomNavigationBar: Container(
        height: 40,
        width: context.sizeDevice.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //children: List.generate(length, (index) => null)
        ),
      ),
    );
  }
}
