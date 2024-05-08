import 'package:flutter/material.dart';

class Description_Page extends StatefulWidget {
  const Description_Page({super.key});

  @override
  State<Description_Page> createState() => _Description_PageState();
}

class _Description_PageState extends State<Description_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Description Page"),
      ),
    );
  }
}
