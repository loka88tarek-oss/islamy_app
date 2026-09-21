import 'package:flutter/material.dart';
import 'package:islamy_app/common/app_colors.dart';
import 'package:islamy_app/gen/assets.gen.dart';
import 'package:islamy_app/widgets/bg_build_widget.dart';

class SebhaTab extends StatelessWidget {
  const SebhaTab({super.key});

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
                child: Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                      top: -88,
                      left: 0,
                      right: 0,
                      child: Center(
                        child: Image.asset(
                          Assets.images.headOfSebha.path,
                          width: size.width * .2,
                          height: size.height*.12,
                        ),
                      ),
                    ),
                    Image.asset(
                      Assets.images.sebhaBody.path,
                      width: size.width * 1.3,
                      height: size.height * .4,
                    ),
                    Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "سبحان الله",
                            style: TextStyle(
                              color: AppColors.whiteColor,
                              fontSize: 36,
                              fontWeight: .bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            30.toString(),
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
            ],
          ),
        ),
      ],
    );
  }
}
