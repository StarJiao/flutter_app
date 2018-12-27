import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/custom/circle_ends_progress_bar.dart';

class SliverAppBarDemo extends StatelessWidget {
  static final String name = 'SliverAppBarDemo';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.create),
                onPressed: () {},
              ),
            ],
            expandedHeight: 200.0,
            pinned: true, //向上滑动时是否留下标题栏
            floating: false, //向上滑动是否留下缩放部分
            snap: false,
            bottom: PreferredSize(
                preferredSize: Size(200.0, 30.0),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("20 days remaining"),
                          Text("20%"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: CircleEndsProgressBar(
                        progress: 0.67,
                      ),
                    ),
                  ],
                )),
            flexibleSpace: Container(
              color: Colors.blue,
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(<Widget>[
              AnnotatedRegion<SystemUiOverlayStyle>(
                value: SystemUiOverlayStyle.dark,
                child: Column(
                  children: List.generate(100, (index) {
                    return Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text("hello $index"),
                    );
                  }),
                ),
              )
            ]),
          ),
        ],
      ),
    );
  }
}
