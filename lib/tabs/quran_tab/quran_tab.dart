import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islamy_app/common/app_colors.dart';
import 'package:islamy_app/gen/assets.gen.dart';
import 'package:islamy_app/tabs/quran_tab/views/most_recent_view.dart';
import 'package:islamy_app/tabs/quran_tab/views/sura_list_view.dart';
import 'package:islamy_app/widgets/bg_build_widget.dart';

class QuranTab extends StatefulWidget {
  const QuranTab({super.key});

  @override
  State<QuranTab> createState() => _QuranTabState();
}

class _QuranTabState extends State<QuranTab> {
  String searchText = '';
  List<int> mostRecent = [];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Stack(
      fit: StackFit.expand,
      children: [
        BgBuildWidget(imagePath: Assets.images.quranTabBg.path),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(child: Image.asset(Assets.images.appBarImage.path)),
                SizedBox(height: 20),
                TextField(
                  keyboardAppearance: Brightness.dark,
                  keyboardType: TextInputType.text,

                  onChanged: (value) {
                    searchText = value;
                    setState(() {});
                  },
                  style: TextStyle(
                    fontFamily: 'jannalt',
                    color: AppColors.butterYellowTextFeild,
                    fontSize: 16,
                    fontWeight: .w700,
                  ),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: AppColors.blackColor.withValues(alpha: .7),
                    hint: Text(
                      "Sura Name",
                      style: TextStyle(
                        color: AppColors.butterYellowTextFeild,
                        fontSize: 16,
                        fontWeight: .w700,
                      ),
                    ),

                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: SvgPicture.asset(
                        Assets.icons.quranIcon,
                        colorFilter: ColorFilter.mode(
                          AppColors.goldColor,
                          BlendMode.srcIn,
                        ),
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.goldColor),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.goldColor),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.goldColor),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                if (mostRecent.isNotEmpty) ...[
                  MostRecentView(size: size, mostRecentIndicies: mostRecent),
                  SizedBox(height: 20),
                ],

                SuraListView(searchText: searchText, mostRecent: mostRecentFun),
              ],
            ),
          ),
        ),
      ],
    );
  }

  void mostRecentFun(int index) {
    if (mostRecent.contains(index)) {
      mostRecent.remove(index);
      mostRecent.insert(0, index);
    } else {
      mostRecent.insert(0, index);

      setState(() {});
    }
  }
}
