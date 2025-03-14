import 'package:flutter/material.dart';

class PageViewBuilder extends StatelessWidget {
  final List<Color> colors = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.purple
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return Container(
            color: colors[index],
            child: Center(
              child: Text(
                'Flutter 0${index + 1}',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          );
        },
      ),
    );
  }
}
