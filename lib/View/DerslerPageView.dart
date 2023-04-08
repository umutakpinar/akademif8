import 'package:flutter/material.dart';

class DerslerPage extends StatefulWidget {
  const DerslerPage({Key? key}) : super(key: key);

  @override
  State<DerslerPage> createState() => _DerslerPageState();
}

class _DerslerPageState extends State<DerslerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dersler Page"),
        centerTitle: true,
      ),
      body: const Center(
        child: Text("Dersler Page"),
      ),);
  }
}
