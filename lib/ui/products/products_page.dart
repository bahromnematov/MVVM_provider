import 'package:bloc_example/ui/products/widget/product_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../view_model/products_view_model.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({super.key});

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Page"),
      ),
      body: Consumer<ProductsViewModel>(
        builder: (context, myProvider, child) {
          if (myProvider.isLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (myProvider.products.isNotEmpty) {
            return GridView.builder(
              itemCount: myProvider.products.length,
              itemBuilder: (context, index) => ProductItem(
                product: myProvider.products[index],
              ),
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: MediaQuery.of(context).size.width/2,
                childAspectRatio: 3/3.4,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20
              ),
            );
          } else {
            return Text("Data yuq");
          }
        },
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     context.read<ProductsViewModel>().getAllProducts();
      //   },
      // ),
    );
  }
}
