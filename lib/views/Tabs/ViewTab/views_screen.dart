import 'dart:async';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:viewbooster/model/vediomodel.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ViewsScreen extends StatefulWidget {
  const ViewsScreen({super.key});

  @override
  State<ViewsScreen> createState() => _ViewsScreenState();
}

class _ViewsScreenState extends State<ViewsScreen> {
  List<VedioModel> vediosList = [
    VedioModel(
        id: 0,
        vedioUrl: "https://www.youtube.com/watch?v=BBAyRBTfsOU",
        watched: false,
        points: 89),
    VedioModel(
        id: 1,
        vedioUrl: "https://www.youtube.com/watch?v=BBAyRBTfsOU",
        watched: false,
        points: 89),
    VedioModel(
        id: 2,
        vedioUrl: "https://www.youtube.com/watch?v=BBAyRBTfsOU",
        watched: false,
        points: 89),
  ];
  late YoutubePlayerController _controller;
  bool _autoPlay = false;
  int _duration = 0;
  int index = 0;
  late Timer _timer;
  int _start = 0;
  int total = 150;
  int count = 0;

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  void _nextVedio() {
    count++;
    index++;
    var videoId = YoutubePlayer.convertUrlToId(vediosList[index].vedioUrl);
    _controller.load(videoId!);
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    var videoId = YoutubePlayer.convertUrlToId(vediosList[index].vedioUrl);
    _controller = YoutubePlayerController(
      initialVideoId: videoId!,
      flags: const YoutubePlayerFlags(
        mute: false,
        autoPlay: true,
        disableDragSeek: false,
        loop: false,
        isLive: false,
        forceHD: false,
        enableCaption: true,
        showLiveFullscreenButton: false,
        // controlsVisibleAtStart: false,
        // hideControls: true
      ),
    )..addListener(() {
        listener();
      });
  }

  void listener() {
    if (_controller.value.isReady &&
        mounted &&
        _controller.value.isPlaying &&
        _start == 0) {
      setState(() {
        _start = _controller.metadata.duration.inSeconds;
        startTimer();
      });
    }
  }

  @override
  void deactivate() {
    // Pauses video while navigating to next page.
    _controller.pause();
    super.deactivate();
  }

  @override
  void dispose() {
    _controller.dispose();
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: height * 0.65,
          width: width,
          color: Colors.black,
          child: YoutubePlayer(
            controller: _controller,
            showVideoProgressIndicator: true,
            progressIndicatorColor: Colors.red,
            topActions: <Widget>[
              const SizedBox(width: 8.0),
              Expanded(
                child: Text(
                  _controller.metadata.title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ),
            ],
            onReady: () {
              // print("ready....................!");
            },
            onEnded: (data) {
              //next vedio loads
              vediosList[index].watched = true;
              if (_autoPlay == true) {
                _nextVedio();
              }
              // print("End");
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text("Auto Play ( Daily Limit : ${count + 1} / ${total} )"),
            Switch(
                activeColor: Colors.red,
                value: _autoPlay,
                onChanged: (auto) {
                  _autoPlay = !_autoPlay;
                  setState(() {});
                }),
          ],
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.access_time_filled_rounded,
                size: 32,
              ),
              Text(
                " $_start",
                style: const TextStyle(fontSize: 28),
              ),
              const VerticalDivider(
                width: 30,
                thickness: 3,
                indent: 9,
                endIndent: 4,
                color: Colors.red,
              ),
              const FaIcon(
                FontAwesomeIcons.sackDollar,
                size: 28,
              ),
              Text(
                " ${vediosList[index].points}",
                style: const TextStyle(fontSize: 28),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  _nextVedio();
                },
                style: ButtonStyle(
                    minimumSize: MaterialStatePropertyAll(
                        Size(width * 0.9, height * 0.05)),
                    maximumSize: MaterialStatePropertyAll(
                        Size(width * 0.9, height * 0.1)),
                    backgroundColor:
                        const MaterialStatePropertyAll(Colors.red)),
                child: const Text(
                  "See Next",
                  style: TextStyle(fontSize: 17),
                )),
          ],
        )
      ],
    ));
  }
}
