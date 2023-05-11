import 'package:flutter/material.dart';
import 'package:mafia_music/state_util.dart';
import '../view/detail_album_view.dart';

class DetailAlbumController extends State<DetailAlbumView>
    implements MvcController {
  static late DetailAlbumController instance;
  late DetailAlbumView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List<Map<String, dynamic>> music = [
    {
      "id": 1,
      "title": "Peaceful Piano Music",
      "album": "Rwlaxing Piano Music",
      "image": ""
    },
    {"id": 2, "title": "Mood", "album": "Yellow Brick", "image": ""},
    {"id": 3, "title": "Instrumental Gitar", "album": "Menza", "image": ""},
    {"id": 4, "title": "Autumn Colors", "album": "Peter H.", "image": ""},
    {"id": 4, "title": "Sleep Music", "album": "Piano Music", "image": ""},
  ];
}
