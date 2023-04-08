import 'package:flutter/material.dart';

import 'DerslerPageView.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var passcontroller = TextEditingController();
  var usernamecontroller = TextEditingController();
  var username = "";
  var password = "";
  final GlobalKey<FormState> _formGlobalKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(builder: (context, viewportConstraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: viewportConstraints.maxHeight
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: SizedBox(
                      height: viewportConstraints.maxHeight*0.25,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset("assets/images/homepage_logo.png"),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                               Text(
                                "Akademi",
                                textScaleFactor: 2.5,
                                style: TextStyle(
                                  fontFamily: 'PoppinsThin',
                                ),
                              ),
                              Text(
                                "Overflow",
                                textScaleFactor: 2.5,
                                style: TextStyle(
                                  fontFamily: 'PoppinsBold',
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        child: Center(
                          //Login ekranı
                          child: Form(
                            key: _formGlobalKey,
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    "Giriş Yap",
                                    textScaleFactor: 2,
                                    style: TextStyle(
                                      fontFamily: 'PoppinsBold',
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                   TextFormField(
                                     controller: usernamecontroller,
                                    onChanged: (value) {
                                      //username
                                      username = value;
                                    },
                                    decoration: const InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'akademioverflow',
                                    ),
                                     validator: (value){
                                       if(value != null){
                                         if(value.isEmpty){
                                           return "Kullanici adi boş bırakılamaz.";
                                         }else{
                                           return null; //Everything ok return null
                                         }
                                       }else{
                                         return "It cant be null probably you have never seen this message but I have wrote it anyway :)";
                                       }
                                     },
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                   TextFormField(
                                     controller: passcontroller,
                                     onChanged: (value) {
                                       //password
                                       password = value;
                                     },
                                    decoration: const InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: '123456',
                                    ),
                                     validator: (value){
                                       if(value != null){
                                         if(value.isEmpty){
                                           return "Şifre boş bırakılamaz.";
                                         }else{
                                           return null; //Everything ok return null
                                         }
                                       }else{
                                         return "It cant be null probably you have never seen this message but I have wrote it anyway :)";
                                       }
                                     },
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      final isValidationSucces = _formGlobalKey.currentState?.validate();
                                      if(isValidationSucces == true){
                                        //Girisi kontrol ediyoruz (dummy)
                                        // username = akademioverflow
                                        // password = 123456
                                        if(username == "akademioverflow" && password == "123456"){
                                          //Giris basarili
                                          ScaffoldMessenger.of(context).showSnackBar(
                                            const SnackBar(
                                              content: Text("Giriş başarılı"),
                                            ),
                                          );
                                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const DerslerPage(),));
                                        }else{
                                          //Giris basarisiz
                                          setState(() {
                                            passcontroller.text = "";
                                            usernamecontroller.text = "";
                                            username = "";
                                            password = "";
                                          });
                                          ScaffoldMessenger.of(context).showSnackBar(
                                            const SnackBar(
                                              content: Text("Giriş başarısız, kullanici adi veya şifre hatalı."),
                                            ),
                                          );
                                        }
                                      }else{
                                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Lutfen hatalı bilgileri düzeltin!")));
                                      }
                                      },
                                    child: const Text("Giriş Yap"),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Hesabın yok mu?"),
                                      TextButton(
                                        onPressed: (){
                                          ScaffoldMessenger.of(context).showSnackBar(
                                            const SnackBar(
                                              content: Text("Kayıtlar şu anda kapalıdır..."),
                                            ),
                                          );
                                        },
                                        child: Text("Kayıt Ol"),
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Şifreni mi unuttun?"),
                                      TextButton(
                                        onPressed: (){
                                          ScaffoldMessenger.of(context).showSnackBar(
                                            const SnackBar(
                                              content: Text("Lütfen akademi yetkilisine başvurun..."),
                                            ),
                                          );
                                        },
                                        child: Text("Şifremi unuttum"),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      )
                  )
                ],
              ),
            ),
          );
        },),
      ),
    );
  }
}
