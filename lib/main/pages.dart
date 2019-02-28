import 'package:flutter/cupertino.dart';
import 'package:flutter_app/page/demo_baby_names.dart';
import 'package:flutter_app/page/demo_progress_bar.dart';
import 'package:flutter_app/page/demo_random_words.dart';
import 'package:flutter_app/page/demo_roate_anim.dart';
import 'package:flutter_app/page/demo_scroll.dart';
import 'package:flutter_app/page/demo_sliver_bar.dart';
import 'package:flutter_app/page/demo_time_picker.dart';
import 'package:flutter_app/page/demo_ui.dart';
import 'package:flutter_app/page/demo_url_launcher.dart';
import 'package:flutter_app/page/demo_weight_layout.dart';
import 'package:flutter_app/page/demo_youtube_list.dart';
import 'package:flutter_app/page/widget_size_getter_demo.dart';

Map<String, WidgetBuilder> pages = {
  YoutubePage.name: (context) => YoutubePage(),
  WeightLayoutPage.name: (context) => WeightLayoutPage(),
  SliverAppBarDemo.name: (context) => SliverAppBarDemo(),
  ImageRotatePage.name: (context) => ImageRotatePage(),
  UriLauncher.name: (context) => UriLauncher(),
  ScrollPage.name: (context) => ScrollPage(),
  WidgetSizeGetterDemo.name: (context) => WidgetSizeGetterDemo(),
  RandomWords.name: (context) => RandomWords(),
  BabyNamesPage.name: (context) => BabyNamesPage(),
  CircleEndsProgressBarDemo.name: (context) => CircleEndsProgressBarDemo(),
  TimePickerDemo.name: (context) => TimePickerDemo(),
  FadeDemo.name: (context) => FadeDemo(),
};
