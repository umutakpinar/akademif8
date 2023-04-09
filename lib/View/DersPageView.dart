import 'dart:ffi';

import 'package:flutter/material.dart';
class DersPage extends StatefulWidget {
  final int dersIndex;
  final List<String> dersler;
  const DersPage({Key? key, required this.dersIndex, required this.dersler}) : super(key: key);

  @override
  State<DersPage> createState() => _DersPageState();
}

class _DersPageState extends State<DersPage> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
