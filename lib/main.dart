import 'package:flutter/cupertino.dart.';

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
    return const Placeholder();
  }
}


