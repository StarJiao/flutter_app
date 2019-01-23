import 'package:flutter/cupertino.dart';
import 'package:flutter_app/page/anim_demo.dart';
import 'package:flutter_app/page/demo_scroll.dart';
import 'package:flutter_app/page/demo_sliver_bar.dart';
import 'package:flutter_app/page/demo_youtube_list.dart';
import 'package:flutter_app/page/url_launcher.dart';
import 'package:flutter_app/page/weight_layout_demo.dart';
import 'package:flutter_app/page/widget_size_getter_demo.dart';

Map<String, WidgetBuilder> pages = {
  YoutubePage.name: (context) => YoutubePage(),
  WeightLayoutPage.name: (context) => WeightLayoutPage(),
  SliverAppBarDemo.name: (context) => SliverAppBarDemo(),
  ImageRotatePage.name: (context) => ImageRotatePage(),
  UriLauncher.name: (context) => UriLauncher(),
  ScrollPage.name: (context) => ScrollPage(),
  WidgetSizeGetterDemo.name: (context) => WidgetSizeGetterDemo(),
};
