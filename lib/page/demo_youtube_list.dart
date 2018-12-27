import 'package:chewie/chewie.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/util/youtube_data_provider.dart';
import 'package:video_player/video_player.dart';

class YoutubePage extends StatefulWidget {
  static final String name = 'Youtobe';
  @override
  YoutubePageState createState() {
    return new YoutubePageState();
  }
}

class YoutubePageState extends State<YoutubePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: true,
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        title: Text(YoutubePage.name),
        leading: IconButton(
          color: Colors.black,
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
            size: 20,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Container(
      color: Colors.white,
      child: ListView.builder(
        itemCount: ids.length,
        itemBuilder: (context, index) => MotivationItem(videoId: ids[index]),
      ),
    );
  }
}

class MotivationItem extends StatefulWidget {
  final String videoId;

  const MotivationItem({Key key, this.videoId}) : super(key: key);

  @override
  MotivationItemState createState() {
    return new MotivationItemState();
  }
}

class MotivationItemState extends State<MotivationItem> {
  String url;
  @override
  void initState() {
    super.initState();
    fetchUrl(widget.videoId).then((res) {
      if (mounted) setState(() => url = res);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width * 9 / 16,
      margin: EdgeInsets.only(bottom: 10),
      color: Colors.black45,
      child: url?.isNotEmpty ?? false
          ? Chewie(
              new VideoPlayerController.network(url),
              autoInitialize: true,
              aspectRatio: 16 / 9,
              autoPlay: false,
              looping: true,
            )
          : Container(),
    );
  }
}
