import 'package:flutter/material.dart';

import '../../../data/models/product_model/product_model.dart';
import '../description_page.dart';

class ProductItem extends StatelessWidget {
  ProductModel product;

  ProductItem({required this.product, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Description_Page(
                      product: product,
                    )));
      },
      child: ListTile(
        title: Image.network(
          product.image,
          height: 160,
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              product.title,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              product.price.toString(),
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
