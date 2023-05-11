import 'package:flutter/material.dart';
import 'package:mafia_music/component_default.dart';
import 'package:mafia_music/core.dart';
import 'package:mafia_music/module/home/widget/card_data_music.dart';
import '../controller/detail_album_controller.dart';

class DetailAlbumView extends StatefulWidget {
  const DetailAlbumView({Key? key}) : super(key: key);

  Widget build(context, DetailAlbumController controller) {
    controller.view = this;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
      width: width,
      height: height,
      decoration: const BoxDecoration(
        color: Color.fromRGBO(47, 41, 69, 1),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: width,
              padding: const EdgeInsets.only(
                  top: 70, left: 34, right: 34, bottom: 20),
              decoration: const BoxDecoration(
                  // image: DecorationImage(
                  //   image: AssetImage("")
                  // ),
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(52),
                      bottomRight: Radius.circular(52))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_back_ios_new_rounded,
                          color: Colors.white,
                          size: 24.0,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: 54,
                          height: 54,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromRGBO(27, 41, 170, 0.2)),
                          child: const Icon(
                            Icons.more_horiz,
                            color: Colors.white,
                            size: 15.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 63.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      textGoogle(
                          "Clean Mind", 40, FontWeight.w600, Colors.white),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          textGoogle("Instrumental", 12, FontWeight.w600,
                              Colors.white),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            child: Icon(
                              Icons.circle,
                              color: Colors.white,
                              size: 5.0,
                            ),
                          ),
                          textGoogle(
                              "240 songs", 12, FontWeight.w600, Colors.white),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            child: Icon(
                              Icons.circle,
                              color: Colors.white,
                              size: 5.0,
                            ),
                          ),
                          textGoogle(
                              "30 hrs", 12, FontWeight.w600, Colors.white)
                        ],
                      ),
                      const SizedBox(
                        height: 19.0,
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 34, right: 34, top: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.repeat,
                        color: Colors.white,
                        size: 20.0,
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),
                      textGoogle("Shuffie", 16, FontWeight.w400, Colors.white)
                    ],
                  ),
                  const SizedBox(
                    height: 25.0,
                  ),
                  ListView.builder(
                    itemCount: controller.music.length,
                    primary: false,
                    shrinkWrap: true,
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
            )
          ],
        ),
      ),
    ));
  }

  @override
  State<DetailAlbumView> createState() => DetailAlbumController();
}
