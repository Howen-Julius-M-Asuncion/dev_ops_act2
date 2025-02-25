import 'package:flutter/cupertino.dart';
import 'main.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedIndex = 0;
  String _selectedPage = 'Home';

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        activeColor: CupertinoColors.systemRed.highContrastColor,
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
          switch (index) {
            case 0:
              setState(() {
                _selectedPage = 'Home';
              });
              break;
            case 1:
              setState(() {
                _selectedPage = 'Following';
              });
              break;
            case 2:
              setState(() {
                _selectedPage = 'Answer';
              });
              break;
            case 3:
              setState(() {
                _selectedPage = 'Spaces';
              });
              break;
            case 4:
              setState(() {
                _selectedPage = 'Notifications';
              });
              break;
          }
        },
        height: 75,
        items: [
          BottomNavigationBarItem(
            icon: Icon(_selectedIndex == 0 ? CupertinoIcons.house_fill : CupertinoIcons.house),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(_selectedIndex == 1 ? CupertinoIcons.square_list_fill: CupertinoIcons.square_list),
            label: 'Following',
          ),
          BottomNavigationBarItem(
            icon: Icon(_selectedIndex == 2 ? CupertinoIcons.pencil_circle_fill : CupertinoIcons.pencil_circle),
            label: 'Create',
          ),
          BottomNavigationBarItem(
            icon: Icon(_selectedIndex == 3 ? CupertinoIcons.person_3_fill : CupertinoIcons.person_3, size: 40,),
            label: 'Spaces',
          ),
          BottomNavigationBarItem(
            icon: Icon(_selectedIndex == 4 ? CupertinoIcons.bell_fill : CupertinoIcons.bell),
            label: 'Notifications',
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
                      _selectedPage,
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
              child: SafeArea(
                child: Column(
                  children: [

                  ],
                )
              ),
            );
          },
        );
      },
    );
  }
}
