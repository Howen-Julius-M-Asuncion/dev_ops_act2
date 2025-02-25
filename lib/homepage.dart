import 'package:flutter/cupertino.dart';
import 'main.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(_selectedIndex == 0 ? CupertinoIcons.house_fill : CupertinoIcons.house),
          ),
          BottomNavigationBarItem(
            icon: Icon(_selectedIndex == 1 ? CupertinoIcons.doc_text_fill : CupertinoIcons.doc_text, size: 30,),
          ),
          BottomNavigationBarItem(
            icon: Icon(_selectedIndex == 2 ? CupertinoIcons.square_pencil_fill : CupertinoIcons.square_pencil),
          ),
          BottomNavigationBarItem(
            icon: Icon(_selectedIndex == 3 ? CupertinoIcons.person_3_fill : CupertinoIcons.person_3, size: 43,),
          ),
          BottomNavigationBarItem(
            icon: Icon(_selectedIndex == 4 ? CupertinoIcons.bell_fill : CupertinoIcons.bell),
          ),
        ],
      ),
      tabBuilder: (context, index) {
        return CupertinoTabView(
          builder: (context) {
            return HomeScreen();
          },
        );
      },
    );
  }
}

// Home Tab
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        automaticallyImplyLeading: false,
        middle: Text(
          'Quora',
          style: TextStyle(
            color: CupertinoColors.destructiveRed,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
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
                                      child: Image.asset('images/howen.jpg',
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
                                      child: Image.asset('images/goco.jpg',
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
                                      child: Image.asset('images/renz.jpg',
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
                            }
                        ),
                      ]
                    );
                  },
                );
              },
              child: Icon(
                CupertinoIcons.person_solid,
                color: CupertinoColors.darkBackgroundGray,
                size: 20,
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
                CupertinoIcons.arrow_right_square,
                color: CupertinoColors.darkBackgroundGray,
                size: 20,
              ),
            ),
          ],
        ),
      ),
      child: Center(
        child: Text('Home Screen', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
