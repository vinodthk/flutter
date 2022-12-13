import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  String? ac;

  ItemWidget(String this.ac);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dada Passing'),
      ),
      body: Center(child: Text(ac!)),
    );
  }
}
