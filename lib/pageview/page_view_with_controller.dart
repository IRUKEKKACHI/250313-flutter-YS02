import 'package:flutter/material.dart';

class PageViewWithController extends StatefulWidget {
  const PageViewWithController({super.key});

  @override
  State<PageViewWithController> createState() => _PageViewWithControllerState();
}

class _PageViewWithControllerState extends State<PageViewWithController> {
  final PageController _controller = PageController();
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {
        _currentPage = _controller.page!.round();
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void goToNextPage() {
    if (_currentPage < 2) {
      _controller.animateToPage(_currentPage + 1,
          duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
    }
  }

  void goToPreviousPage() {
    if (_currentPage > 0) {
      _controller.animateToPage(_currentPage - 1,
          duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Page View with Controller',
        ),
      ),
      body: Column(
        children: [
          Expanded(
              child: PageView(
            controller: _controller,
            children: [
              Container(
                color: Colors.blueAccent,
                child: Center(
                  child: Text(
                    'Flutter 01',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
              Container(
                color: Colors.orangeAccent,
                child: Center(
                  child: Text(
                    'Flutter 02',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
              Container(
                color: Colors.pinkAccent,
                child: Center(
                  child: Text(
                    'Flutter 03',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                ),
              )
            ],
          )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black26,
                ),
                onPressed: goToPreviousPage,
                child: Text(
                  'previous',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(width: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black26,
                ),
                onPressed: goToNextPage,
                child: Text(
                  'next',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
