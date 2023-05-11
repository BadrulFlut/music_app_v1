import 'package:flutter/material.dart';
import 'package:mafia_music/component_default.dart';

class CardDataAlbum extends StatelessWidget {
  String image;
  String name;
  String genre;
  CardDataAlbum({
    Key? key,
    required this.image,
    required this.name,
    required this.genre,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 125,
            height: 140,
            decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(image: AssetImage(image)),
                borderRadius: BorderRadius.circular(18)),
          ),
          const SizedBox(
            height: 8.0,
          ),
          textGoogle(name, 14, FontWeight.w600, Colors.white),
          const SizedBox(
            height: 4.0,
          ),
          textGoogle(genre, 12, FontWeight.w600,
              const Color.fromRGBO(255, 255, 255, 0.5))
        ],
      ),
    );
  }
}
