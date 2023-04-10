import 'package:akademioverflow/View/ThreadPageView.dart';
import 'package:flutter/material.dart';

class FlutterQuestionsPage extends StatefulWidget {
  const FlutterQuestionsPage({Key? key}) : super(key: key);

  final String threadHeader = "Flutter Android Studio debugging işleminde takılı kalıyor!";

  @override
  State<FlutterQuestionsPage> createState() => _FlutterQuestionsPageState();
}

class _FlutterQuestionsPageState extends State<FlutterQuestionsPage> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ThreadPage(threadHeader: widget.threadHeader)
          ),
        );
      },
      leading: Icon(Icons.question_mark),
      title: FittedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.threadHeader,
              textScaleFactor: 1.5,
            ),
          ],
        ),
      ),
      tileColor: Colors.green,
    );
  }
}
