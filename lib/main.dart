import 'package:bloc_example/2-lesson/view_model/products_view_model.dart';
import 'package:bloc_example/provider/counter_view_model.dart';
import 'package:bloc_example/provider/provider_counter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '2-lesson/ui/products/products_page.dart';

void main() {
  runApp(
    /// Providers are above [MyApp] instead of inside it, so that tests
    /// can use [MyApp] while mocking the providers
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CounterViewModel()),
        ChangeNotifierProvider(create: (context) => ProductsViewModel()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: ProductsPage());
  }
}
