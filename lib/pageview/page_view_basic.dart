import 'package:flutter/material.dart';

class PageViewBasic extends StatelessWidget {
  const PageViewBasic({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'PageView',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: PageView(
        children: [
          Container(
            color: Colors.blue,
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
            color: Colors.yellowAccent,
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
      ),
    );
  }
}
