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

  void onItemTapped(int Index) {
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
    final screenWidth = MediaQuery.of(context).size.width;
    final iconSize = screenWidth > 600 ? 28.0 : 24.0;
    final textStyle = TextStyle(
        color: currentIndex == 0 ? Colors.white : Colors.white,
        fontSize: screenWidth > 600 ? 14.0 : 12.0);

    Widget currentScreen = pages[currentIndex];

    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Color.fromRGBO(39, 167, 231, 1),
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Change to spaceEvenly
            children: [

              Expanded(
                child: BottomNavBarItem(icon: Icons.home_filled,title: "Home",onPressed: (){
                  setState(() {
                    currentScreen = Home();
                    currentIndex = 0;
                  });
                },currentIndex:currentIndex ,index: 0,)
              ),
              Expanded(
                child:BottomNavBarItem(icon: Icons.visibility_outlined,title: "Active",onPressed: (){
                  setState(() {
                    currentScreen = ActiveAreas();
                    currentIndex = 1;
                  });
                },currentIndex:currentIndex ,index: 1,)
              ),
              Expanded(
                child: BottomNavBarItem(icon: Icons.home_filled,title: "Analytics",onPressed: (){
                  setState(() {
                    currentScreen = Analytics();
                    currentIndex = 2;
                  });
                },currentIndex:currentIndex ,index: 2,),
              ),
              Expanded(
                child: BottomNavBarItem(icon: Icons.camera_alt_outlined,title: "Surveillance",onPressed: (){
                  setState(() {
                    currentScreen = Home();
                    currentIndex = 3;
                  });
                },currentIndex:currentIndex ,index: 3,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}




class BottomNavBarItem extends StatelessWidget {
  final int index;
  final int currentIndex;
  final String title;
  final Function onPressed;
  final IconData icon;
  const BottomNavBarItem({required this.index, required this.title, required this.onPressed, required this.icon, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: 50,
      onPressed: (){
       onPressed();
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.visibility_outlined,
            color: currentIndex == index ? Colors.white : Colors.white,),
          Text(title, style: TextStyle(color: currentIndex == index ? Colors.white: Colors.white),)
        ],
      ),
    );
  }
}

