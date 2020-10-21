/*
 * Name: Dorivaldo Vicente dos Santos
 * E-mail: dorivaldodossantos2000@gmail.com
 * Phone: (+244) 944 55 76 10 
 * WhatsApp: (+244) 992 22 82 30
 * Github: https://github.com/DVS2000
 * Site: https://dorivaldodossantos.herokuapp.com
 */

import 'package:ecommerce_app/app/pages/dashboard_page/components/card_produt_component.dart';
import 'package:ecommerce_app/app/utils/colors_utils.dart';
import 'package:ecommerce_app/app/widgets/gradient_icon_widget.dart';
import 'package:ecommerce_app/app/utils/size_context_util.dart';
import 'package:flutter/cupertino.dart';
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
      body: Stack(
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30,),
                Row(
                  children: [
                    GestureDetector(
                      onTap: ()=> Navigator.pop(context),
                      child: GradientIcon(CupertinoIcons.back, 25)
                    ),
                    Spacer(),
                    GradientIcon(CupertinoIcons.search, 25),

                  ],
                ),
                CardProdutComponent(
                  index: widget.index,
                ),

                SizedBox(height: context.sizeDevice.height / 10,),

                Text(
                  "Cadeira Caseira",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: context.sizeDevice.width / 20
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  "Buy Best Products From \nAll Of The World",
                  style: TextStyle(
                    fontSize: context.sizeDevice.width / 23
                  ),
                ),
                SizedBox(height: 10,),
                Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry."),

                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
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
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Row(
                    children: List.generate(2, (index) => Expanded(
                      child: Card(
                        elevation: 5,
                        margin: EdgeInsets.only(right: 10),
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
              ],
            ),
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    gradient: gradientPrimary
                  ),
                  child: Text("Add ao carrinho"),
                ),
              ),
              SizedBox(height: 10,),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    gradient: gradientPrimary
                  ),
                  child: Text(" Comprar agora  "),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
