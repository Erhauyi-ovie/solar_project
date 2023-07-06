import 'package:flutter/material.dart';
import 'package:solar_project/screens/home/home.dart';
import 'package:solar_project/screens/activeAreas/activeAreas.dart';
import 'package:solar_project/screens/profile/profile.dart';
import 'package:solar_project/screens/analytics/analytics.dart';
import 'package:solar_project/screens/surveillance/surveillance.dart';

class FabTabs extends StatefulWidget {
  int selectedIndex = 0;
  FabTabs({required this.selectedIndex});

  @override
  State<FabTabs> createState() => _FabTabsState();
}

class _FabTabsState extends State<FabTabs> {
  int currentIndex = 0;

  void onItemTapped(int Index){
    setState(() {
      widget.selectedIndex = Index;
      currentIndex = widget.selectedIndex;
    });
  }

  @override
  void initState() {
    onItemTapped(widget.selectedIndex);
    super.initState();
  }

  final List<Widget> pages = [
    Home(),
    ActiveAreas(),
    Analytics(),
    Surveillance(),

  ];

  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    Widget currentScreen = currentIndex == 0
        ? Home()
        : currentIndex == 1
        ? Surveillance()
        : currentIndex == 2
        ? Analytics()
        : ActiveAreas();


    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.teal[700],
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 50,
                    onPressed: (){
                      setState(() {
                        currentScreen = Home();
                        currentIndex = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.home_filled,
                          color: currentIndex == 0 ? Colors.white : Colors.grey,),
                        Text("Home", style: TextStyle(color: currentIndex == 0 ? Colors.white: Colors.grey),)
                      ],
                    ),

                  ),
                  MaterialButton(
                    minWidth: 50,
                    onPressed: (){
                      setState(() {
                        currentScreen = ActiveAreas();
                        currentIndex = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.visibility_outlined,
                          color: currentIndex == 3 ? Colors.white : Colors.grey,),
                        Text("ActiveAreas", style: TextStyle(color: currentIndex == 3 ? Colors.white: Colors.grey),)
                      ],
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MaterialButton(
                        minWidth: 50,
                        onPressed: (){
                          setState(() {
                            currentScreen = Analytics();
                            currentIndex = 2;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.analytics_outlined,
                              color: currentIndex == 2 ? Colors.white : Colors.grey,),
                            Text("Analytics", style: TextStyle(color: currentIndex == 2 ? Colors.white: Colors.grey),)
                          ],
                        ),
                      ),
                    ],
                  ),

                  MaterialButton(
                    minWidth: 50,
                    onPressed: (){
                      setState(() {
                        currentScreen = Surveillance();
                        currentIndex = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.camera_alt_outlined,
                          color: currentIndex == 1 ? Colors.white : Colors.grey,),
                        Text("Surveilla", style: TextStyle(color: currentIndex == 1 ? Colors.white: Colors.grey),)
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
