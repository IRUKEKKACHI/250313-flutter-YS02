import 'package:flutter/material.dart';
import 'package:flutter_ys02_20230313/pageview/page_view_basic.dart' as pvBasic;
import 'package:flutter_ys02_20230313/pageview/page_view_with_controller.dart'
    as pvController;
import 'package:flutter_ys02_20230313/pageview/page_view_builder.dart'
    as pvBuilder;

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    //home: pvBasic.PageViewBasic(),
    //home: pvController.PageViewWithController(),
    home: pvBuilder.PageViewBuilder(),
  ));
}
