

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:islamy_app/common/app_colors.dart';
import 'package:islamy_app/gen/assets.gen.dart';

class BottomLayerContainer extends StatefulWidget {
  const BottomLayerContainer({super.key, required this.size});

  final Size size;

  @override
  State<BottomLayerContainer> createState() => _BottomLayerContainerState();
}

class _BottomLayerContainerState extends State<BottomLayerContainer> {

  List<String> salahName=[ "Asr",
    "Duhr",
    "Sun Rise",
    "Fagr",
    "Maghreb",
    "Isha",];
List<String> salahTime=[
"04:13",
    "12:47",
    "06:46",
    "05:19",
    "06:48",
    "08:06",
];
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.size.width * .9,
      height: widget.size.height * .3,
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
                    color: AppColors.blackColor.withValues(alpha: .71),
                    fontSize: 20,
                    fontWeight: .w700,
                  ),
                ),
                SizedBox(height: 10),
                //TODO:API
                Text(
                  "Tuesday",
                  style: TextStyle(
                    color: AppColors.blackColor.withValues(alpha: .9),
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
              builder: (BuildContext context, BoxConstraints constrains) =>
                  CarouselSlider.builder(
                    itemCount: 5,
                    options: CarouselOptions(
                      enlargeFactor: .15,
                      viewportFraction: .27,
                      autoPlay: true,
                      enlargeCenterPage: true,
                      height: constrains.maxHeight,
                      scrollDirection: Axis.horizontal,
                    ),
                    itemBuilder: (BuildContext context, index, realIndex) =>
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 2.0),
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Stack(
                              fit: StackFit.expand,
                              children: [
                                Container(
                                  height: constrains.maxHeight,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
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
                                      salahName[index],
                                      style: TextStyle(
                                        color: AppColors.whiteColor,
                                        fontSize: 16,
                                        fontWeight: .w700,
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    //TODO:API
                                    Text(
                                      salahTime[index],
                                      style: TextStyle(
                                        color: AppColors.whiteColor,
                                        fontSize: 32,
                                        fontWeight: .w700,
                                      ),
                                    ),
                                    Text(
                                      salahName[index]=="Sun Rise"||salahName[index]=="Fagr"?
                                      "AM":"PM",
                                      style: TextStyle(
                                        color: AppColors.whiteColor,
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
                          color: AppColors.blackColor.withValues(alpha: .5),
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
                SizedBox(width: 20),
                SvgPicture.asset(Assets.icons.noSoundIcon),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
