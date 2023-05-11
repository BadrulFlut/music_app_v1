import 'package:flutter/material.dart';
import 'package:mafia_music/state_util.dart';
import '../view/home_view.dart';

class HomeController extends State<HomeView>
    with TickerProviderStateMixin
    implements MvcController {
  static late HomeController instance;
  late HomeView view;

  @override
  void initState() {
    instance = this;
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1500));
    animationController.repeat(reverse: true);
    animation = Tween(begin: 1.0, end: 13.0).animate(animationController)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
  late AnimationController animationController;
  late Animation animation;

  List<Map<String, dynamic>> album = [
    {"id": 1, "title": "Clear Mind", "genre": "Instrumental", "image": ""},
    {"id": 2, "title": "Urban Mood", "genre": "Hip-Hop", "image": ""},
    {"id": 3, "title": "Summer", "genre": "Club Music", "image": ""}
  ];

  List<Map<String, dynamic>> music = [
    {"id": 1, "title": "Good 4 U", "album": "Olivie Stylor", "image": ""},
    {"id": 2, "title": "Me More", "album": "Doza Cat Featuring", "image": ""},
    {"id": 3, "title": "Butter", "album": "BTS", "image": ""},
    {
      "id": 4,
      "title": "Save Your Tears",
      "album": "Olivie Stylor",
      "image": ""
    },
  ];
}
