import 'package:flutter/cupertino.dart';
import 'main.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        activeColor: CupertinoColors.systemRed.highContrastColor,
        height: 70,
        items: [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.house),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.doc_text),
            label: "Following",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.create),
            label: "Create",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person_3),
            label: "Spaces",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.bell),
            label: "Notifications",
          ),
        ],
      ),
      tabBuilder: (context, index) {
        return CupertinoTabView(
          builder: (context) {
            return CupertinoPageScaffold(
              navigationBar: CupertinoNavigationBar(
                automaticBackgroundVisibility: false,
                automaticallyImplyLeading: false,
                border: null,
                leading: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ClipOval(
                      child: Image.asset(
                        'images/quora_default.jpg',
                        height: 40,
                        width: 40,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 15),
                    Text(
                      'Home',
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CupertinoButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {
                        showCupertinoDialog(
                          context: context,
                          builder: (context) {
                            return CupertinoAlertDialog(
                              title: Text('List of Members'),
                              content: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.all(16.0),
                                        child: Column(
                                          children: [
                                            ClipOval(
                                              child: Image.asset(
                                                'images/howen.jpg',
                                                height: 75,
                                                width: 75,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Text('Howen Julius Asuncion'),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.all(16.0),
                                        child: Column(
                                          children: [
                                            ClipOval(
                                              child: Image.asset(
                                                'images/goco.jpg',
                                                height: 75,
                                                width: 75,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Text('John Michael Goco'),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.all(16.0),
                                        child: Column(
                                          children: [
                                            ClipOval(
                                              child: Image.asset(
                                                'images/renz.jpg',
                                                height: 75,
                                                width: 75,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Text('Renz Gabriel Salas'),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              actions: [
                                CupertinoButton(
                                  child: Text('Close', style: TextStyle(color: CupertinoColors.destructiveRed)),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                ),
                              ],
                            );
                          },
                        );
                      },
                      child: Icon(
                        CupertinoIcons.info_circle,
                        color: CupertinoColors.darkBackgroundGray,
                        size: 25,
                      ),
                    ),
                    CupertinoButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {
                        showCupertinoDialog(
                          context: context,
                          builder: (context) {
                            return CupertinoAlertDialog(
                              title: Text('Logout'),
                              content: Text('Are you sure?'),
                              actions: [
                                CupertinoButton(
                                  child: Text("Yes"),
                                  onPressed: () {
                                    Navigator.pushReplacement(
                                      context,
                                      CupertinoPageRoute(builder: (context) => MyApp()),
                                    );
                                  },
                                ),
                                CupertinoButton(
                                  child: Text("No", style: TextStyle(color: CupertinoColors.destructiveRed)),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                ),
                              ],
                            );
                          },
                        );
                      },
                      child: Icon(
                        CupertinoIcons.arrow_uturn_left_circle,
                        color: CupertinoColors.darkBackgroundGray,
                        size: 25,
                      ),
                    ),
                  ],
                ),
              ),
              child: Column(

              ),
            );
          },
        );
      },
    );
  }
}
