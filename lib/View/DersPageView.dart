import 'package:akademioverflow/Utils/HelperWidgets.dart';
import 'package:akademioverflow/View/FlutterQuestionsPageView.dart';
import 'package:akademioverflow/View/NoQuestionsPageView.dart';
import 'package:flutter/material.dart';

import 'ThreadPageView.dart';
class DersPage extends StatefulWidget {
  final int dersIndex;
  final List<String> dersler;
  const DersPage({Key? key, required this.dersIndex, required this.dersler}) : super(key: key);

  String titleDeterminer(){
    return dersler[dersIndex].toString();
  }

  @override
  State<DersPage> createState() => _DersPageState();
}

class _DersPageState extends State<DersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GeneralAppBar(titleText: widget.titleDeterminer(),),
      drawer: GeneralDrawer(),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, viewportConstraints) {
            return ConstrainedBox(
                constraints: BoxConstraints(
                    maxHeight: viewportConstraints.maxHeight,
                ),
                child: widget.dersIndex == 0 ? FlutterQuestionsPage() : NoQuestionsPage(),

            );
          }
        ),
      ),

    );
  }
}
