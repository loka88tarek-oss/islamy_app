import 'dart:developer';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islamy_app/common/app_colors.dart';
import 'package:islamy_app/gen/assets.gen.dart';
import 'package:islamy_app/tabs/times_tab/time_sections/azkar_section.dart';
import 'package:islamy_app/tabs/times_tab/time_sections/bottom_layer_container.dart';
import 'package:islamy_app/widgets/bg_build_widget.dart';

class TimesTab extends StatelessWidget {
  const TimesTab({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Stack(
      children: [
        BgBuildWidget(imagePath: Assets.images.timeTabBg.path),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(child: Image.asset(Assets.images.appBarImage.path)),
                SizedBox(height: 20),
                Stack(
                  children: [
                    BottomLayerContainer(size: size),
                   
                    Positioned(
                      top: -10,
                      left: -5,
                      right: 250,
                      child: Container(
                        width: size.width * .5,
                        height: size.height * .1,
                        decoration: BoxDecoration(
                          color: AppColors.brownContainer,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Column(
                          mainAxisAlignment: .center,
                          children: [
                            //TODO:API
                            Text(
                              "16 Jul,",
                              style: TextStyle(
                                color: AppColors.whiteColor,
                                fontSize: 16,
                                fontWeight: .w700,
                              ),
                            ),
                            SizedBox(height: 10),
                            //TODO:API
                            Text(
                              "2024",
                              style: TextStyle(
                                color: AppColors.whiteColor,
                                fontSize: 16,
                                fontWeight: .w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: -10,
                      left: 250,
                      right: -5,
                      child: Container(
                        width: size.width * .5,
                        height: size.height * .1,
                        decoration: BoxDecoration(
                          color: AppColors.brownContainer,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Column(
                          mainAxisAlignment: .center,
                          children: [
                            //TODO:API
                            Text(
                              "09 Muh,",
                              style: TextStyle(
                                color: AppColors.whiteColor,
                                fontSize: 16,
                                fontWeight: .w700,
                              ),
                            ),
                            SizedBox(height: 10),
                            //TODO:API
                            Text(
                              "1446",
                              style: TextStyle(
                                color: AppColors.whiteColor,
                                fontSize: 16,
                                fontWeight: .w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  "Azkar",
                  style: TextStyle(
                    color: AppColors.butterYellowTextFeild,
                    fontSize: 16,
                    fontWeight: .w700,
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    AzkarWidget(
                      size: size,
                      azkarName: 'Evening Azkar',
                      azkarImage: Assets.images.eveningAzkar.path,
                    ),
                    SizedBox(width: 12),
                    AzkarWidget(
                      size: size,
                      azkarName: "Morning Azkar",
                      azkarImage: Assets.images.morningAzkar.path,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

