/*
 * Name: Dorivaldo Vicente dos Santos
 * E-mail: dorivaldodossantos2000@gmail.com
 * Phone: (+244) 944 55 76 10 
 * WhatsApp: (+244) 992 22 82 30
 * Github: https://github.com/DVS2000
 * Site: https://dorivaldodossantos.herokuapp.com
 */

import 'package:ecommerce_app/app/pages/details_page.dart';
import 'package:ecommerce_app/app/utils/colors_utils.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/app/utils/size_context_util.dart';

// ignore: must_be_immutable
class CardProdutComponent extends StatelessWidget {
  int index;
  CardProdutComponent({this.index});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Center(
        child: InkWell(
          onTap: () => Navigator.of(context).push(PageRouteBuilder(
              pageBuilder: (context, a, b) => DetailsPage(index: index))),
          child: Hero(
            tag: "background$index",
            child: Container(
              margin: EdgeInsets.only(right: 25),
              width: context.sizeDevice.width * .5,
              height: context.sizeDevice.height * .26,
              decoration: BoxDecoration(
                gradient: gradientPrimary,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(8),
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(8)
                )
              ),
              child: Stack(
                children: [
                  Center(
                    child: Image.asset(
                      IMG_CADEIRAC,
                      width: context.sizeDevice.width * .4,
                      height: context.sizeDevice.height * .3,
                      fit: BoxFit.cover,
                    ),
                  ),

                  Positioned(
                    bottom: -1,
                    right: 0,
                    child: Container(
                      height: 25,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(20),
                          topLeft: Radius.circular(20)
                        )
                      ),
                      alignment: Alignment.center,
                      child: Text("120.000 Kzs", style: TextStyle(color: PRIMARY_COLOR),),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}