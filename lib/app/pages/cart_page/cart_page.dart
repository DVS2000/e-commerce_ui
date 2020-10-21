/*
 * Name: Dorivaldo Vicente dos Santos
 * E-mail: dorivaldodossantos2000@gmail.com
 * Phone: (+244) 944 55 76 10 
 * WhatsApp: (+244) 992 22 82 30
 * Github: https://github.com/DVS2000
 * Site: https://dorivaldodossantos.herokuapp.com
 */


import 'package:ecommerce_app/app/utils/colors_utils.dart';
import 'package:ecommerce_app/app/widgets/gradient_icon_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/app/utils/size_context_util.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: GradientIcon(CupertinoIcons.back, 25)),
                Spacer(),
                GradientIcon(CupertinoIcons.search, 25),
              ],
            ),
            SizedBox(height: 10,),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: List.generate(2, (index) => Card(
                  elevation: 5,
                  shadowColor: Colors.grey.withOpacity(.5),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 35),
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                gradient: gradientPrimary,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(8),
                                  bottomRight: Radius.circular(20),
                                  bottomLeft: Radius.circular(8)
                                )
                              ),
                              child: Center(
                                child: Image.asset(
                                  IMG_RELOGIO,
                                  width: context.sizeDevice.width / 5.5,
                                  height: context.sizeDevice.width / 5.5,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Relogio novo"
                                ),
                                Text(
                                  "20.000kzs",
                                  style: TextStyle(
                                    fontSize: context.sizeDevice.width / 18
                                  ),
                                ),
                                Text(
                                  "Quantidade: 10",
                                  style: TextStyle(
                                    fontSize: context.sizeDevice.width / 30
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),

                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            gradient: gradientPrimary
                          ),
                          child: Text(
                            "  Remover  ",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 56,
        width: context.sizeDevice.width,
        child: Row(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  "2 Itens",
                  style: TextStyle(
                    fontSize: context.sizeDevice.width / 18
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  gradient: gradientPrimary
                ),
                alignment: Alignment.center,
                child: Text(
                  "40.000kzs Comprar",
                  style: TextStyle(
                    fontSize: context.sizeDevice.width / 18,
                    color: Colors.white
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
