import 'package:flutter/material.dart';
import 'package:mafia_music/component_default.dart';
import 'package:mafia_music/core.dart';
import 'package:mafia_music/module/home/widget/card_data_album.dart';
import 'package:mafia_music/module/home/widget/card_data_music.dart';
import '../controller/home_controller.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  Widget build(context, HomeController controller) {
    controller.view = this;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
      width: width,
      height: height,
      decoration: const BoxDecoration(
        color: Color.fromRGBO(47, 41, 69, 1),
        // image: DecorationImage(image: AssetImage("")
      ),
      child: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 70),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 34, left: 34),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 27),
                    child:
                        textGoogle("Browse", 40, FontWeight.w600, Colors.white),
                  ),
                  Container(
                    width: 54,
                    height: 54,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          color: Colors.white.withOpacity(0.15),
                          blurRadius: controller.animation.value +
                              controller.animation.value,
                          spreadRadius: controller.animation.value,
                          offset: Offset(controller.animation.value,
                              controller.animation.value))
                    ], shape: BoxShape.circle, color: const Color(0xFF1B29AA)),
                    child: const Icon(
                      Icons.search,
                      size: 30.0,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Column(
              children: [
                SizedBox(
                  height: 190,
                  child: ListView.builder(
                    itemCount: controller.album.length,
                    padding: const EdgeInsets.only(left: 34),
                    scrollDirection: Axis.horizontal,
                    primary: false,
                    itemBuilder: (context, index) {
                      final data = controller.album[index];
                      return CardDataAlbum(
                          image: data["image"],
                          name: data["title"],
                          genre: data["genre"]);
                    },
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                SingleChildScrollView(
                    padding: const EdgeInsets.only(left: 34),
                    child: Row(
                      children: [
                        textGoogle("Recommendation", 16, FontWeight.w500,
                            Colors.white),
                        const SizedBox(
                          width: 20.0,
                        ),
                        Opacity(
                            opacity: 0.5,
                            child: textGoogle(
                                "Populer", 16, FontWeight.w500, Colors.white)),
                        const SizedBox(
                          width: 20.0,
                        ),
                        Opacity(
                            opacity: 0.5,
                            child: textGoogle(
                                "New Music", 16, FontWeight.w500, Colors.white))
                      ],
                    ))
              ],
            ),
            const SizedBox(
              height: 30.0,
            ),
            ListView.builder(
              padding: const EdgeInsets.only(left: 34, right: 34),
              itemCount: controller.music.length,
              shrinkWrap: true,
              primary: false,
              itemBuilder: (context, index) {
                final data = controller.music[index];
                return CardDataMusic(
                    image: data["image"],
                    title: data["title"],
                    album: data["album"],
                    button: () {});
              },
            )
          ],
        ),
      ),
    ));
  }

  @override
  State<HomeView> createState() => HomeController();
}
