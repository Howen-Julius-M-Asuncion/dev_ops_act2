import 'package:flutter/cupertino.dart.';
import 'package:flutter/material.dart';

void main() {
  runApp(
    CupertinoApp(
      title: 'Cupertino Dev Ops Act 1',
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.systemFill.darkColor,
      child:
      SafeArea(
        child: Column(children: [
          SizedBox(height: 200,),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text('Quora', style: TextStyle(
              color: CupertinoColors.destructiveRed,
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
                    color: CupertinoColors.destructiveRed,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  )
                ),
              ),
            ]),
          ),
          SizedBox(height: 30,),
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
                    color: CupertinoColors.destructiveRed,
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  )
                ),
              ),
            ]),
          ),
          SizedBox(height: 40,),
          CupertinoButton.tinted(
            borderRadius: BorderRadius.all(Radius.circular(25)),
            child:Text('Continue to Login',
              style: TextStyle(
                color: CupertinoColors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              )
            ),
            onPressed: (){

            }
          ),
          SizedBox(height: 30,),
          Divider(color: CupertinoColors.systemGrey3, indent: 25, endIndent: 25, /* height: 95, */),
          Padding(
            padding: EdgeInsets.fromLTRB(30, 5, 30, 0),
            child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              Flexible(child:
              Text('Quora · Clone · for · Dev · Ops · Act 2',
                  overflow: TextOverflow.visible,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: CupertinoColors.destructiveRed,
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  )
              ),
              ),
            ]),
          ),


        ]),
      )
    );
  }
}


