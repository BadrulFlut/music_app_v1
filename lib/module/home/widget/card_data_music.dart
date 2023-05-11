import 'package:flutter/material.dart';
import 'package:mafia_music/component_default.dart';

class CardDataMusic extends StatelessWidget {
  String image;
  String title;
  String album;
  VoidCallback button;
  CardDataMusic(
      {Key? key,
      required this.image,
      required this.title,
      required this.album,
      required this.button})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 72,
            height: 72,
            decoration: BoxDecoration(
                color: Colors.black,
                image: DecorationImage(image: AssetImage(image)),
                borderRadius: BorderRadius.circular(18)),
          ),
          const SizedBox(
            width: 20.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              textGoogle(title, 14, FontWeight.w600, Colors.white),
              const SizedBox(
                height: 4.0,
              ),
              Opacity(
                  opacity: 0.5,
                  child: textGoogle(album, 12, FontWeight.w600, Colors.white)),
            ],
          ),
          const Spacer(),
          Opacity(
            opacity: 0.5,
            child: IconButton(
              onPressed: button,
              icon: const Icon(
                Icons.more_horiz,
                color: Colors.white,
                size: 15.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
