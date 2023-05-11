import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mafia_music/state_util.dart';
import '../view/detail_music_view.dart';

class DetailMusicController extends State<DetailMusicView>
    implements MvcController {
  static late DetailMusicController instance;
  late DetailMusicView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => widget.build(context, this);
  double durationMusicFull = 3.25;
  double increnmentValue = 0.01;
  double durationMusic = 0.00;

  runningDuration(double value) {
    setState(() {
      durationMusic = value;
    });
  }

  void runMusic() {
    setState(() {
      if (durationMusic < durationMusicFull) {
        durationMusic += increnmentValue;
        if (durationMusic > durationMusicFull) {
          durationMusic = durationMusicFull;
        }
      }
    });
  }
}
