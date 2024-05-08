import 'package:bloc_example/2-lesson/data/models/product_model/product_model.dart';
import 'package:bloc_example/2-lesson/ui/products/description_page.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  ProductModel product;

  ProductItem({required this.product, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => Description_Page()));
      },
      child: Container(
        margin: EdgeInsets.all(12),
        decoration: BoxDecoration(border: Border.all(color: Colors.black)),
        child: ListTile(
            title: Text(product.title),
            subtitle: Image.network(
              product.image,
              height: 60,
            )),
      ),
    );
  }
}
