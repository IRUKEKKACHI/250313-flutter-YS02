import 'package:flutter/material.dart';

class PageViewWithBottomNavigationBar extends StatefulWidget {
  const PageViewWithBottomNavigationBar({super.key});

  @override
  State<PageViewWithBottomNavigationBar> createState() =>
      _PageViewWithBottomNavigationBarState();
}

class _PageViewWithBottomNavigationBarState
    extends State<PageViewWithBottomNavigationBar> {
  final PageController _controller = PageController();
  int _currentIndex = 0;

  void _onItemTapped(int index) {
    _controller.animateToPage(index,
        duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        children: [
          Center(
            child: Text(
              'Home',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ),
          Center(
            child: Text(
              'Search',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ),
          Center(
            child: Text(
              'Profile',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
