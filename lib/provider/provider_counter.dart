import 'package:bloc_example/provider/counter_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProviderCounter extends StatefulWidget {
  const ProviderCounter({super.key});

  @override
  State<ProviderCounter> createState() => _ProviderCounterState();
}

class _ProviderCounterState extends State<ProviderCounter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider Counter"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Sen shuncha marta FAB ni bosding"),
            Text(
              "${context.watch<CounterViewModel>().counter}",
              style: TextStyle(fontSize: 28),
            ),
            IconButton(
                onPressed: () {
                  context.read<CounterViewModel>().decrement();
                },
                icon: Icon(Icons.minimize_outlined))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<CounterViewModel>().increment();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
