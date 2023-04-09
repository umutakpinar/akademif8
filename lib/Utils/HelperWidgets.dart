import 'package:akademioverflow/View/LoginPageView.dart';
import 'package:flutter/material.dart';

// ---------- General Scaffold
class GeneralScaffold extends StatefulWidget {
  const GeneralScaffold({Key? key}) : super(key: key);

  @override
  State<GeneralScaffold> createState() => _GeneralScaffoldState();
}

class _GeneralScaffoldState extends State<GeneralScaffold> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // TODO A SCAFFOLD WILL BE CREATED FOR GENERAL USE
    );
  }
}


// -------- General Drawer


// ------- General AppBar

//DrawerListTile
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
