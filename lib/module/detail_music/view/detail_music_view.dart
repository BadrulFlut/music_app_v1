import 'package:flutter/material.dart';
import 'package:mafia_music/component_default.dart';
import 'package:mafia_music/core.dart';
import '../controller/detail_music_controller.dart';

class DetailMusicView extends StatefulWidget {
  const DetailMusicView({Key? key}) : super(key: key);

  Widget build(context, DetailMusicController controller) {
    controller.view = this;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
      width: width,
      height: height,
      decoration: const BoxDecoration(color: Color.fromRGBO(47, 41, 69, 1)),
      child: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 60, left: 34, right: 34),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
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
              height: 46.0,
            ),
            Container(
              width: 280,
              height: 280,
              decoration: BoxDecoration(
                  // image: DecorationImage(
                  //   image: AssetImage("")
                  // ),
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(52)),
            ),
            const SizedBox(
              height: 40.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                textGoogle(
                    "Peaceful Piano Music", 16, FontWeight.w600, Colors.white),
                const SizedBox(
                  height: 4.0,
                ),
                Opacity(
                    opacity: 0.5,
                    child: textGoogle("Rwlaxing Piano Music", 14,
                        FontWeight.w600, Colors.white))
              ],
            ),
            const SizedBox(
              height: 40.0,
            ),
            Slider(
                inactiveColor: Colors.white.withOpacity(0.5),
                activeColor: Colors.white,
                min: 0.0,
                max: controller.durationMusicFull,
                value: controller.durationMusic,
                onChanged: controller.runningDuration),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  textGoogle(controller.durationMusic.toStringAsFixed(2), 12,
                      FontWeight.w400, Colors.white),
                  textGoogle(
                      "3.25",
                      12,
                      FontWeight.w400,
                      controller.durationMusic == 3.25
                          ? Colors.white
                          : Colors.white.withOpacity(0.5))
                ],
              ),
            ),
            const SizedBox(
              height: 40.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.identity()..scale(-1.0, 1.0, 1.0),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.play_arrow_rounded,
                      size: 24.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 30.0,
                ),
                InkWell(
                  onTap: () {
                    controller.runMusic();
                  },
                  child: Container(
                    width: 80,
                    height: 80,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                    child: const Icon(
                      Icons.play_circle_outline_rounded,
                      size: 24.0,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 30.0,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.play_arrow_rounded,
                    color: Colors.white,
                    size: 24.0,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    ));
  }

  @override
  State<DetailMusicView> createState() => DetailMusicController();
}
