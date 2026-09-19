import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:islamy_app/common/app_colors.dart';
import 'package:islamy_app/gen/assets.gen.dart';
import 'package:islamy_app/screens/home_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //  elevation: 0,
        //   scrolledUnderElevation: 0,
        toolbarHeight: 140,
        title: Image.asset(Assets.images.appBarImage.path),
        bottom: AppBar(),
      ),
      body: IntroductionScreen(
        showDoneButton: true,
        showNextButton: true,
        showSkipButton: false,
        showBackButton: true,
        onDone: () => Navigator.of(context).pushNamed(HomeScreen.routeName),
        done: Text(
          "Finish",
          style: TextStyle(
            color: AppColors.goldColor,
            fontSize: 16,
            fontWeight: .bold,
          ),
        ),
        back: Text(
          "Back",
          style: TextStyle(
            color: AppColors.goldColor,
            fontSize: 16,
            fontWeight: .bold,
          ),
        ),
        next: Text(
          "Next",
          style: TextStyle(
            color: AppColors.goldColor,
            fontSize: 16,
            fontWeight: .bold,
          ),
        ),
        pages: [
          PageViewModel(
            image: Image.asset(Assets.images.firstImageIntroScreen.path),
            title: "",
            bodyWidget: Text(
              "Welcome To Islmi App",
              style: TextStyle(
                color: AppColors.goldColor,
                fontSize: 24,
                fontWeight: .w700,
              ),
            ),
          ),
          PageViewModel(
            image: Image.asset(Assets.images.secImageIntroScreen.path),
            decoration: PageDecoration(
              pageColor: Color(0xFF202020),
              titleTextStyle: TextStyle(
                color: Color(0xFFE2BE7F),
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
              bodyTextStyle: TextStyle(
                color: Color(0xFFE2BE7F),
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
              titlePadding: EdgeInsets.only(top: 24, bottom: 16),
              bodyPadding: EdgeInsets.symmetric(horizontal: 10),
              bodyAlignment: Alignment.topCenter,
              imagePadding: EdgeInsets.zero,
            ),

            titleWidget: Text(
              "Welcome To Islami",
              style: TextStyle(
                color: AppColors.goldColor,
                fontSize: 24,
                fontWeight: .w700,
              ),
            ),
            bodyWidget: Text(
              "We Are Very Excited To Have You In Our Community",
              style: TextStyle(
                color: AppColors.goldColor,
                fontSize: 20,
                fontWeight: .w700,
              ),
            ),
          ),
          PageViewModel(
            image: Image.asset(Assets.images.thirdImageIntroScreen.path),
            titleWidget: Text(
              "Reading the Quran",
              style: TextStyle(
                color: AppColors.goldColor,
                fontSize: 24,
                fontWeight: .w700,
              ),
            ),
            bodyWidget: Text(
              "Read, and your Lord is the Most Generous",
              style: TextStyle(
                color: AppColors.goldColor,
                fontSize: 20,
                fontWeight: .w700,
              ),
            ),
          ),
          PageViewModel(
            image: Image.asset(Assets.images.fourthImageIntroScreen.path),
            decoration: PageDecoration(
              pageColor: Color(0xFF202020),
              titleTextStyle: TextStyle(
                color: Color(0xFFE2BE7F),
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
              bodyTextStyle: TextStyle(
                color: Color(0xFFE2BE7F),
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
              titlePadding: EdgeInsets.only(top: 24, bottom: 16),
              bodyPadding: EdgeInsets.symmetric(horizontal: 10),
              bodyAlignment: Alignment.topCenter,
              imagePadding: EdgeInsets.zero,
            ),

            titleWidget: Text(
              "Bearish",
              style: TextStyle(
                color: AppColors.goldColor,
                fontSize: 24,
                fontWeight: .w700,
              ),
            ),
            bodyWidget: Text(
              "Praise the name of your Lord, the Most High",
              style: TextStyle(
                color: AppColors.goldColor,
                fontSize: 20,
                fontWeight: .w700,
              ),
            ),
          ),
          PageViewModel(
            image: Image.asset(Assets.images.fifthImageIntroScreen.path),
            decoration: PageDecoration(
              pageColor: Color(0xFF202020),
              titleTextStyle: TextStyle(
                color: Color(0xFFE2BE7F),
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
              bodyTextStyle: TextStyle(
                color: Color(0xFFE2BE7F),
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
              titlePadding: EdgeInsets.only(top: 24, bottom: 16),
              bodyPadding: EdgeInsets.symmetric(horizontal: 10),
              bodyAlignment: Alignment.topCenter,
              imagePadding: EdgeInsets.zero,
            ),

            titleWidget: Text(
              "Holy Quran Radio",
              style: TextStyle(
                color: AppColors.goldColor,
                fontSize: 24,
                fontWeight: .w700,
              ),
            ),

            bodyWidget: Text(
              "You can listen to the Holy Quran Radio through the application for free and easily",
              style: TextStyle(
                color: AppColors.goldColor,
                fontSize: 20,
                fontWeight: .w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
