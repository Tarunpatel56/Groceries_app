import 'package:flutter/material.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({super.key});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      appBar: AppBar(title:  Text("Product Details"),),
    body: Column(children: [
      Container(child: Image.asset("assets/Rectangle7.png"),)
    ],),
    );
    
  }
}