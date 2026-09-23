import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islamy_app/common/app_colors.dart';
import 'package:islamy_app/gen/assets.gen.dart';
import 'package:islamy_app/tabs/hadeeth_tab/hadeeth_tab.dart';
import 'package:islamy_app/tabs/quran_tab/quran_tab.dart';
import 'package:islamy_app/tabs/radio_tab/radio_tab.dart';
import 'package:islamy_app/tabs/sebha_tab/sebha_tab.dart';
import 'package:islamy_app/tabs/times_tab/times_tab.dart';


class HomeScreen extends StatefulWidget {
   static const String routeName="home_screen";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex=0;
  List<Widget>tabs=[QuranTab(),HadeethTab(),SebhaTab(),RadioTab(),TimesTab()];
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: tabs[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        
        onTap: (value) {
          currentIndex=value;
          setState(() {
            
          });
        },
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.goldColor,
        selectedItemColor: AppColors.whiteColor,
        unselectedItemColor: AppColors.blackColor,
        showSelectedLabels: true,
        showUnselectedLabels: false,

        items: [
          _buildBottomNavigationBar(
            icon: (Assets.icons.quranIcon),
            label: "Quran",
          ),
          _buildBottomNavigationBar(
            icon: (Assets.icons.hadeethIcon),
            label: "Hadeeth",
          ),
          _buildBottomNavigationBar(
            icon: (Assets.icons.sebhaIcon),
            label: "Sebha",
          ),
          _buildBottomNavigationBar(
            icon: (Assets.icons.radioIcon),
            label: "Radio",
          ),
          _buildBottomNavigationBar(
            icon: (Assets.icons.timeIcon),
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
      icon: SvgPicture.asset(icon,
      width:29 ,
      height:29 ,
      ),
      activeIcon: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(66),
          color: AppColors.blackColor.withValues(alpha: .6),
        ),

        child: SvgPicture.asset(
          icon,
          width: 19,
          height: 19,
          colorFilter: ColorFilter.mode(AppColors.whiteColor, BlendMode.srcIn),
        ),
      ),
      label: label,
    );
  }
}
