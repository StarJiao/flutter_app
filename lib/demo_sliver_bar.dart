import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/custom/circle_ends_progress_bar.dart';

void main() {
  runApp(new SliverAppBarDemo());
}

class Demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "hehe",
        home: ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              return Text("hello$index");
            }));
  }
}

class SliverAppBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
//        print("width : ${MediaQuery.of(context).size.width}");
//        print("height : ${MediaQuery.of(context).size.height}");
      home: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              leading: IconButton(icon: Icon(Icons.list), onPressed: null),
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
                        padding: const EdgeInsets.only(
                            left: 16.0, right: 16.0, top: 16.0),
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
                child: Image.asset(
                  "assets/title_bar.png",
                  fit: BoxFit.fitWidth,
                ),
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
      ),
    );
  }
}
