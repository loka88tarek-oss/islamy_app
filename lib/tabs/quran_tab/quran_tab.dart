import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islamy_app/common/app_colors.dart';
import 'package:islamy_app/gen/assets.gen.dart';
import 'package:islamy_app/tabs/quran_tab/views/most_recent_view.dart';
import 'package:islamy_app/tabs/quran_tab/views/sura_list_view.dart';
import 'package:islamy_app/widgets/bg_build_widget.dart';

class QuranTab extends StatelessWidget {
  const QuranTab({super.key});

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
                  style: TextStyle(
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
                MostRecentView(size: size),
                SizedBox(height: 20),
              SuraListView(),
             
              ],
            ),
          ),
        ),
      ],
    );
  }
}
