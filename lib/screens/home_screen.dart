import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islamy_app/common/app_colors.dart';
import 'package:islamy_app/gen/assets.gen.dart';


class HomeScreen extends StatelessWidget {
   static const String routeName="home_screen";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.goldColor,
        selectedItemColor: AppColors.whiteColor,
        unselectedItemColor: AppColors.blackColor,
        showSelectedLabels: true,
        showUnselectedLabels: false,

        items: [
          _buildBottomNavigationBar(
            icon: (Assets.images.quranIcon),
            label: "Quran",
          ),
          _buildBottomNavigationBar(
            icon: (Assets.images.hadeethIcon),
            label: "Hadeeth",
          ),
          _buildBottomNavigationBar(
            icon: (Assets.images.sebhaIcon),
            label: "Sebha",
          ),
          _buildBottomNavigationBar(
            icon: (Assets.images.radioIcon),
            label: "Radio",
          ),
          _buildBottomNavigationBar(
            icon: (Assets.images.timeIcon),
            label: "Time",
          ),
        ],
      ),
    );
  }










  BottomNavigationBarItem _buildBottomNavigationBar({
    required String icon,
    required String label,
  }) {
    return BottomNavigationBarItem(
      icon: SvgPicture.asset(icon),
      activeIcon: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(66),
          color: AppColors.blackColor.withValues(alpha: .6),
        ),

        child: SvgPicture.asset(
          icon,
          colorFilter: ColorFilter.mode(AppColors.whiteColor, BlendMode.srcIn),
        ),
      ),
      label: label,
    );
  }
}
