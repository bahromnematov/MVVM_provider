import 'package:bloc_example/data/models/product_model/product_model.dart';
import 'package:bloc_example/view_model/products_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../view_model/product_view_model.dart';

class Description_Page extends StatefulWidget {
  ProductModel product;

  Description_Page({required this.product, super.key});

  @override
  State<Description_Page> createState() => _Description_PageState();
}

class _Description_PageState extends State<Description_Page> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<ProductViewModel>().getSingleProduct(widget.product.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Description Page"),
      ),
      body: Consumer<ProductViewModel>(
        builder: (context, value, child) {
          if (value.isLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (value.product != null) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.network(
                  widget.product.image,
                  height: MediaQuery.of(context).size.height / 2,
                  width: MediaQuery.of(context).size.width,
                ),
                Text(
                  widget.product.title,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 18),
                ),
                Text(
                  widget.product.description,
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w700,
                      fontSize: 16),
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("${widget.product.rating.rate} ⭐",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      widget.product.price.toString() + "\$",
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                  ],
                )
              ],
            );
          }
          return Container();
        },
      ),
    );
  }
}
