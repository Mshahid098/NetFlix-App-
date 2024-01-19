import 'package:flutter/material.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({super.key});

  @override
  State<CustomNavigationBar> createState() => _NavigationBarState();
}

class _NavigationBarState extends State<CustomNavigationBar> {
  int currentIndex = 0;

  /// index method
  void bottomNavigationIndex(int index) {
    setState(() {
      currentIndex = index;
      debugPrint("$currentIndex");
    });
  }

  List<Widget> pages = [
    const Center(
      child: Text("home"),
    ),
    const Center(
      child: Text("search"),
    ),
    const Center(
      child: Text("activity"),
    ),
    const Center(
      child: Text("person"),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          onTap: bottomNavigationIndex,
          type: BottomNavigationBarType.shifting,
          currentIndex: currentIndex,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
                backgroundColor: Colors.blue),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Search',
                backgroundColor: Colors.blue),
            BottomNavigationBarItem(
                icon: Icon(Icons.local_activity),
                label: 'Activity',
                backgroundColor: Colors.blue),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_3),
                label: 'Person',
                backgroundColor: Colors.blue)
          ]),
      body: pages[currentIndex],
    );
  }
}
