import 'package:flutter/material.dart';
import 'package:food_course/scr/helpers/style.dart';
import 'package:food_course/scr/models/products.dart';
import 'package:food_course/scr/widgets/custom_text.dart';


class ShoppingBag extends StatefulWidget {
  @override
  _ShoppingBagState createState() => _ShoppingBagState();
}

class _ShoppingBagState extends State<ShoppingBag> {
  Product product = Product(name: "Pizza",price: 20.0,rating: 4.3,vendor: "Papa's Pizza",wishList: false,image: "5.jpg");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: black),
        leading: IconButton(icon: Icon(Icons.arrow_back_ios,color: black,),onPressed: null,),
        backgroundColor: white,
        elevation: 0,
        centerTitle: true,
        title: CustomText(text: "Shopping Bag",),
        actions: <Widget>[

          Padding(
            padding: const EdgeInsets.only(top:8.0),
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Image.asset("images/shopping-bag.png",width: 20,height: 20,),
                ),

                Positioned(
                  right: 7,
                  bottom: 5,
                  child: Container(
                      decoration: BoxDecoration(
                          color: white ,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color:  Colors.grey[400],
                              offset:  Offset(2,1),
                              blurRadius: 3,
                            )
                          ]
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 4.0, right:  4.0 ),
                        child: CustomText(text: "2",color: red,size: 16 ,weight: FontWeight.bold,),
                      )),
                )

              ],
            ),
          ),

        ],
      ),
      backgroundColor: white,
    );
  }
}
