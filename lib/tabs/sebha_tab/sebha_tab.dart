import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:islamy_app/common/app_colors.dart';
import 'package:islamy_app/gen/assets.gen.dart';
import 'package:islamy_app/widgets/bg_build_widget.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int count = 0;
  int indexOfList = 0;
  double turn=0;
  bool isEndOfCount = false;
   bool isClicked = false;
  List<String> azkarList = [
    "سُبْحَانَ اللَّهِ",
    "الْحَمْدُ لِلَّهِ",
    "لَا إِلَٰهَ إِلَّا اللَّهُ",
    "اللَّهُ أَكْبَرُ",
    "لَا حَوْلَ وَلَا قُوَّةَ\n     إِلَّا بِاللَّهِ",
    "اللَّهُمَّ اغْفِرْ لِي",
    "اللَّهُمَّ ارْحَمْنِي",
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Stack(
      children: [
        BgBuildWidget(imagePath: Assets.images.sebhaTabBg.path),
        SafeArea(
          child: Column(
            children: [
              Center(child: Image.asset(Assets.images.appBarImage.path)),
              SizedBox(height: 20),
              Text(
                "سَبِّحِ اسْمَ رَبِّكَ الأعلى ",
                style: TextStyle(
                  color: AppColors.whiteColor,
                  fontSize: 36,
                  fontWeight: .w700,
                ),
              ),
              SizedBox(height: 20),

              Padding(
                padding: const EdgeInsets.only(top: 90),
                child: InkWell(
                  onTap: () {
                                onTapCount();
                               isClicked=false;
                                  
                            setState(() {
                              turn+=1/30;
                            });
                          
                              },


                  child: Stack(
                    clipBehavior: Clip.none,
                    alignment: Alignment.center,
                    children: [
                      Positioned(
                        top: -84,
                        left: 0,
                        right: 0,
                        child: Center(
                          child: Image.asset(
                            Assets.images.headOfSebha.path,
                            width: size.width * .2,
                            height: size.height * .12,
                          ),
                        ),
                      ),
                       
                      AnimatedRotation(
                        turns: turn, duration: Duration(seconds: 1),
                        child: Image.asset(
                          Assets.images.sebhaBody.path,
                          width: size.width * 1.3,
                          height: size.height * .4,
                        ),
                      ),
                      Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              azkarList[indexOfList],
                              style: TextStyle(
                                color: AppColors.whiteColor,
                                fontSize: 36,
                                fontWeight: .bold,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              count.toString(),
                              style: TextStyle(
                                color: AppColors.whiteColor,
                                fontSize: 36,
                                fontWeight: .bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  void onTapCount() {
    isClicked=true;
    if (count < 33) {
      count++;
    } else {
      count = 0;
      isEndOfCount = true;

      if (indexOfList < azkarList.length - 1) {
        indexOfList++;
      } else if (indexOfList == azkarList.length - 1) {
        indexOfList = 0;
        count = 0;
      }
    }

    setState(() {});
  }
}
