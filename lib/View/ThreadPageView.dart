import 'package:akademioverflow/Utils/HelperWidgets.dart';
import 'package:flutter/material.dart';

class ThreadPage extends StatefulWidget {
  final threadHeader;
  const ThreadPage({
    Key? key,
    required this.threadHeader,
  }) : super(key: key);


  @override
  State<ThreadPage> createState() => _ThreadPageState();
}
//Chat ekranı yapılacak

class _ThreadPageState extends State<ThreadPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GeneralAppBar(titleText: widget.threadHeader),
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
                child: Container(
                  child: Column(
                    children: [
                      Expanded(
                        child: ListView(
                          children: [
                            Container(
                              margin: EdgeInsets.all(10),
                              color: Colors.greenAccent,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  ListTile(
                                    leading: CircleAvatar(
                                        backgroundColor: Colors.white,
                                        radius: 35,
                                        child: CircleAvatar(
                                          foregroundImage: AssetImage("assets/images/homepage_logo.png"),
                                          radius: 28,)
                                    ),
                                    title: Text("flutterjr"),
                                    subtitle: Text("22.10"),
                                  ),
                                  ListBody(
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.all(30),
                                          child: FittedBox(
                                              child: Container(
                                                  child: Text("Merhaba sorum başlıktaki gibi. Tavsiyeleriniz nelerdir?")
                                              )
                                          )
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(10),
                              color: Colors.blueAccent,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  ListTile(
                                    leading: CircleAvatar(
                                        backgroundColor: Colors.white,
                                        radius: 35,
                                        child: CircleAvatar(
                                          foregroundImage: AssetImage("assets/images/homepage_logo.png"),
                                          radius: 28,)
                                    ),
                                    title: Text("CrazyCoder88"),
                                    subtitle: Text("23.59"),
                                  ),
                                  ListBody(
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.all(30),
                                          child: FittedBox(
                                              child: Container(
                                                  child: Text("Gradle cache'i silip tekrar deneyebilir misin?")
                                              )
                                          )
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(10),
                              color: Colors.greenAccent,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  ListTile(
                                    leading: CircleAvatar(
                                        backgroundColor: Colors.white,
                                        radius: 35,
                                        child: CircleAvatar(
                                          foregroundImage: AssetImage("assets/images/homepage_logo.png"),
                                          radius: 28,)
                                    ),
                                    title: Text("flutterjr"),
                                    subtitle: Text("00.22"),
                                  ),
                                  ListBody(
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.all(30),
                                          child: FittedBox(
                                              child: Container(
                                                  child: Text("Denedim, bir işe yaramadı.")
                                              )
                                          )
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(10),
                              color: Colors.redAccent,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  ListTile(
                                    leading: CircleAvatar(
                                        backgroundColor: Colors.white,
                                        radius: 35,
                                        child: CircleAvatar(
                                          foregroundImage: AssetImage("assets/images/homepage_logo.png"),
                                          radius: 28,)
                                    ),
                                    title: Text("composer"),
                                    subtitle: Text("01.34"),
                                  ),
                                  ListBody(
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.all(30),
                                          child: FittedBox(
                                              child: Container(
                                                  child: Text("Sorun kullandığın dependencylerde olabilir.")
                                              )
                                          )
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        color: Colors.grey,
                        child: Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "    Type your answer here...",
                                  ),
                                ),
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Answer sent!")));
                              },
                              icon: Icon(Icons.send),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ),
              );
            },
          )
      ),
    );
  }
}
