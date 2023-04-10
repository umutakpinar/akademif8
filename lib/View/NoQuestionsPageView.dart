import 'package:flutter/material.dart';

class NoQuestionsPage extends StatefulWidget {
  const NoQuestionsPage({Key? key}) : super(key: key);

  @override
  State<NoQuestionsPage> createState() => _NoQuestionsPageState();
}

class _NoQuestionsPageState extends State<NoQuestionsPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Bu konuda hiç soru yok!"),
    );
  }
}
