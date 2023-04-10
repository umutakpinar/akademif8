import 'package:akademioverflow/View/LoginPageView.dart';
import 'package:flutter/material.dart';


// -------- General Drawer

class GeneralDrawer extends StatelessWidget {
  const GeneralDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
    );
  }
}

// ------- General AppBar
class GeneralAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String titleText;
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  const GeneralAppBar({
    super.key,
    required this.titleText
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: FittedBox(child: Text(titleText)),
      centerTitle: true,
    );
  }
}

// ------- DrawerListTile
class DrawerListTile extends StatelessWidget {
  final String titleText;
  final String? alertMessage;
  final Widget? page;
  const DrawerListTile({
    super.key,
    required this.titleText,
    this.page,
    this.alertMessage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        tileColor: Colors.green,
        title: Container(
            child: Text(titleText)
        ),
        onTap: (){
          if(page != null){
            Navigator.push(context, MaterialPageRoute(builder: (context) => page!,));
          }else{
            String message = alertMessage ?? "Something gone wrong";
            Navigator.pop(context);
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
          }
        },
      ),
    );
  }
}
