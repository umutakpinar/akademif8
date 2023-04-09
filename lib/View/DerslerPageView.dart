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
      appBar: AppBar(
        title: const Text("Dersler"),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: LayoutBuilder(
          builder: (context, viewportConstraints) {
            return ConstrainedBox(
              constraints:
                  BoxConstraints(maxHeight: viewportConstraints.maxHeight),
              child: Column(
                children: [
                  DrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                    ),
                    child: Column(children: [
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: FittedBox(
                          child: Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 40,
                                child: CircleAvatar(
                                  radius: 38,
                                  foregroundImage: AssetImage(
                                      "assets/images/homepage_logo.png"),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                  "akademioverflow",
                                  textAlign: TextAlign.center,
                                  textScaleFactor: 1.5,
                                  overflow: TextOverflow.clip,
                                  style: TextStyle(
                                    fontFamily: "assets/fonts/Poppins-Bold.ttf",
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ]),
                  ),
                  Expanded(child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      DrawerListTile(titleText: 'Sorularım',alertMessage: "Hiç sorunuz yok!"),
                      Expanded(child: Container()),
                      Padding(
                          padding: EdgeInsets.symmetric(vertical: 35,horizontal: 20),
                          child : ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).popUntil((route) => route.isFirst);
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red
                            ),
                            child: Text("Çıkış Yap"),
                          )
                      )
                    ],
                  )
                  )
                ],
              ),
            );
          },
        ),
      ),
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
                        title: Text(
                          ders.toString(),
                          textScaleFactor: 1.5,
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

