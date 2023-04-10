import 'package:akademioverflow/Utils/HelperFunctions.dart';
import 'package:akademioverflow/View/DersPageView.dart';
import 'package:akademioverflow/View/LoginPageView.dart';
import 'package:flutter/material.dart';

import '../Utils/HelperWidgets.dart';

class DerslerPage extends StatefulWidget {
  const DerslerPage({Key? key}) : super(key: key);

  @override
  State<DerslerPage> createState() => _DerslerPageState();
}

class _DerslerPageState extends State<DerslerPage> {
  final _dersler = <String>[
    "Flutter",
    "Unity",
    "İngilizce",
    "Teknoloji Girişimciliği",
    "Proje Yönetimi"
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GeneralAppBar(titleText: 'Dersler',),
      drawer: GeneralDrawer(),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, viewportConstraints) {
            return ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: viewportConstraints.maxHeight,
                minWidth: viewportConstraints.maxWidth,
                maxHeight: viewportConstraints.maxHeight,
              ),
              child: ListView(
                children: [
                  ...[
                    for (var ders in _dersler)
                      ListTile(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => DersPage(
                              dersIndex: _dersler.indexOf(ders),
                              dersler: _dersler,
                            ),
                          ));
                        },
                        leading: Icon(Icons.book),
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              ders.toString(),
                              textScaleFactor: 1.5,
                            ),
                            ders.toString() == "Flutter" ? Text("1 Questions",textScaleFactor: 0.75,) : Text("0 Questions",textScaleFactor: 0.75,),
                          ],
                        ),
                        tileColor: colorByIndex(_dersler.indexOf(ders)),
                      )
                  ],
                  Expanded(
                      child: FittedBox(
                          child: ColoredBox(
                              color: Colors.blueGrey,
                              child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 30, horizontal: 20),
                                  child: Text(
                                    "Sorularını görmek istediğiniz dersi seçin.",
                                    textScaleFactor: 2,
                                    textAlign: TextAlign.center,
                                  )))))
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
