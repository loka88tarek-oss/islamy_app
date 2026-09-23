import 'dart:developer';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islamy_app/common/app_colors.dart';
import 'package:islamy_app/gen/assets.gen.dart';
import 'package:islamy_app/tabs/times_tab/time_sections/azkar_section.dart';
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
                    Container(
                      width: size.width * .9,
                      height: size.height * .3,
                      decoration: BoxDecoration(
                        color: AppColors.goldColor,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Column(
                        mainAxisAlignment: .center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                //TODO:API
                                Text(
                                  "Pray Time",
                                  style: TextStyle(
                                    color: AppColors.blackColor.withValues(
                                      alpha: .71,
                                    ),
                                    fontSize: 20,
                                    fontWeight: .w700,
                                  ),
                                ),
                                SizedBox(height: 10),
                                //TODO:API
                                Text(
                                  "Tuesday",
                                  style: TextStyle(
                                    color: AppColors.blackColor.withValues(
                                      alpha: .9,
                                    ),
                                    fontSize: 20,
                                    fontWeight: .w700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10),
                          Expanded(
                            child: LayoutBuilder(
                              builder:
                                  (
                                    BuildContext context,
                                    BoxConstraints constrains,
                                  ) => CarouselSlider.builder(
                                    itemCount: 5,
                                    options: CarouselOptions(
                                      enlargeFactor: .2,
                                      viewportFraction: .35,
                                      autoPlay: true,
                                      enlargeCenterPage: true,
                                      height: constrains.maxHeight,
                                      scrollDirection: Axis.horizontal,
                                    ),
                                    itemBuilder:
                                        (
                                          BuildContext context,
                                          index,
                                          realIndex,
                                        ) => Card(
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                              20,
                                            ),
                                          ),
                                          child: Stack(
                                            fit: StackFit.expand,
                                            children: [
                                              Container(
                                                height: constrains.maxHeight,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  gradient: LinearGradient(
                                                    end: Alignment.bottomRight,
                                                    begin: Alignment.topLeft,
                                                    colors: [
                                                      AppColors.blackColor,
                                                      AppColors.brownContainer,
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Column(
                                                children: [
                                                  //TODO:API
                                                  Text(
                                                    "Asr",
                                                    style: TextStyle(
                                                      color:
                                                          AppColors.whiteColor,
                                                      fontSize: 16,
                                                      fontWeight: .w700,
                                                    ),
                                                  ),
                                                  SizedBox(height: 10),
                                                  //TODO:API
                                                  Text(
                                                    "04:38",
                                                    style: TextStyle(
                                                      color:
                                                          AppColors.whiteColor,
                                                      fontSize: 32,
                                                      fontWeight: .w700,
                                                    ),
                                                  ),
                                                  Text(
                                                    "PM",
                                                    style: TextStyle(
                                                      color:
                                                          AppColors.whiteColor,
                                                      fontSize: 16,
                                                      fontWeight: .w700,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                  ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 5),
                            child: Row(
                              mainAxisAlignment: .center,
                              children: [
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "Next Pray ",
                                        style: TextStyle(
                                          color: AppColors.blackColor
                                              .withValues(alpha: .5),
                                          fontSize: 16,
                                          fontWeight: .w700,
                                        ),
                                      ),
                                      //TODO:API
                                      TextSpan(
                                        text: "- 02:32",
                                        style: TextStyle(
                                          color: AppColors.blackColor,
                                          fontSize: 16,
                                          fontWeight: .w700,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
SizedBox(width: 20,),
                                SvgPicture.asset(Assets.icons.noSoundIcon),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
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
