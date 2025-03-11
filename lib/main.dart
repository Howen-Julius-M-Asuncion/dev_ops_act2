import 'package:dev_ops_act2/homepage.dart';
import 'package:flutter/cupertino.dart.';
import 'package:flutter/material.dart';

void main() {
  runApp(
    CupertinoApp(
      title: 'Cupertino Dev Ops Act 1',
      home: MyApp(),
      debugShowCheckedModeBanner: false,
      theme: CupertinoThemeData(
        brightness: Brightness.light
      )
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  TextEditingController _username = TextEditingController();
  TextEditingController _password = TextEditingController();
  bool hidePassword = true;
  String loginMsg = "";

  isLogin(String username, String password){
    if(username == "admin" && password == "123"){
      setState(() {
        _username.text = "";
        _password.text = "";
        loginMsg = "";
      });
      return true;
    }else{
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      // backgroundColor: CupertinoColors.systemFill.darkColor,
      child:
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/quora_background.png"),
            fit: BoxFit.cover,
          )
        ),
        child: SafeArea(
          child: Column(crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.center, children: [
            // SizedBox(height: 200,),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text('Quora', style: TextStyle(
                color: CupertinoColors.white,
                fontWeight: FontWeight.bold,
                fontSize: 60,
              )),
            ]),
            SizedBox(height: 14,),
            Padding(
              padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Flexible(child:
                  Text('A place to share knowledge and better understand the world',
                    overflow: TextOverflow.visible,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: CupertinoColors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    )
                  ),
                ),
              ]),
            ),
            SizedBox(height: 25,),
            Divider(color: CupertinoColors.systemGrey3, indent: 25, endIndent: 25, /* height: 95, */),
            // SizedBox(height: 5,),
            Padding(
              padding: EdgeInsets.fromLTRB(30, 5, 30, 0),
              child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Flexible(child:
                  Text('By continuing you indicate that you agree to Quora\'s Terms of Service and Privacy Policy.',
                    overflow: TextOverflow.visible,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: CupertinoColors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    )
                  ),
                ),
              ]),
            ),
            SizedBox(height: 40,),
            Padding(
              padding: EdgeInsets.fromLTRB(30, 0, 30, 10),
              child: SizedBox(
                height: 45,
                child: CupertinoTextField(
                  controller: _username,
                  placeholder: 'Username',
                  padding: EdgeInsets.all(10),
                  prefix: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 5, 0),
                    child: Icon(CupertinoIcons.profile_circled, color: CupertinoColors.label,),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: SizedBox(
                height: 45,
                child: CupertinoTextField(
                  controller: _password,
                  placeholder: 'Password',
                  padding: EdgeInsets.all(10),
                  obscureText: hidePassword,
                  prefix: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 5, 0),
                    child: Icon(CupertinoIcons.lock_circle, color: CupertinoColors.label,),
                  ),
                  suffix: CupertinoButton(child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                    child: Icon(
                      hidePassword? CupertinoIcons.eye_solid : CupertinoIcons.eye_slash_fill, color: CupertinoColors.label, size:24),
                  ),
                    onPressed: (){
                      setState(() {
                        hidePassword = !hidePassword;
                      });
                    },
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Text('$loginMsg', style: TextStyle(color: CupertinoColors.destructiveRed, fontWeight: FontWeight.w900)),
            SizedBox(height: 20,),
            CupertinoButton(
              borderRadius: BorderRadius.all(Radius.circular(25)),
              color: Color.fromRGBO(48, 48, 48, 0.6),
              child:Text('Continue to Login',
                style: TextStyle(
                  color: CupertinoColors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                )
              ),
              onPressed: (){
                isLogin(_username.text, _password.text) ?
                Navigator.pushReplacement(context, CupertinoPageRoute(builder: (context)=> Homepage()))
                : setState (() {
                  _password.text = "";
                  _username.text = "";
                  loginMsg = "Incorrect Username or Password";
                });
              }
            ),
            SizedBox(height: 30,),
            Divider(color: CupertinoColors.systemGrey3, indent: 25, endIndent: 25, /* height: 95, */),
            Padding(
              padding: EdgeInsets.fromLTRB(30, 5, 30, 0),
              child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Flexible(child:
                Text('Quora · Clone · for · Dev · Ops · 2025',
                  overflow: TextOverflow.visible,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: CupertinoColors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  )
                ),
                ),
              ]),
            ),
          ]),
        ),
      )
    );
  }
}
