import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islamy_app/common/app_colors.dart';
import 'package:islamy_app/gen/assets.gen.dart';
import 'package:islamy_app/tabs/radio_tab/radio_sections/list_view_section.dart';
import 'package:islamy_app/widgets/bg_build_widget.dart';

class RadioTab extends StatefulWidget {
  const RadioTab({super.key});

  @override
  State<RadioTab> createState() => _RadioTabState();
}

class _RadioTabState extends State<RadioTab> {
   int isSelected = 0;
 @override


  Widget build(BuildContext context) {
  
    
    return Stack(
      children: [
        BgBuildWidget(imagePath: Assets.images.radioTabBg.path),
        SafeArea(
          child: DefaultTabController(
            length: 2,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Center(child: Image.asset(Assets.images.appBarImage.path)),
                  TabBar(
                    dividerHeight: 0,

                    onTap: (value) {
                      isSelected = value;
                      setState(() {});
                    },

                    tabs: [
                      Tab(
                        child: isSelected == 0
                            ? Container(
                                width: 145,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: AppColors.goldColor,
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Center(
                                  child: Text(
                                    "Radio",
                                    style: TextStyle(
                                      color: AppColors.blackColor,
                                      fontSize: 16,
                                      fontWeight: .w700,
                                    ),
                                  ),
                                ),
                              )
                            : Container(
                                width: 145,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: AppColors.blackColor,
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Center(
                                  child: Text(
                                    "Radio",
                                    style: TextStyle(
                                      color: AppColors.whiteColor,
                                      fontSize: 16,
                                      fontWeight: .w700,
                                    ),
                                  ),
                                ),
                              ),
                      ),
                      Tab(
                        child: isSelected == 1
                            ? Container(
                                width: 145,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: AppColors.goldColor,
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Center(
                                  child: Text(
                                    "Reciters",
                                    style: TextStyle(
                                      color: AppColors.blackColor,
                                      fontSize: 16,
                                      fontWeight: .w700,
                                    ),
                                  ),
                                ),
                              )
                            : Container(
                                width: 145,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: AppColors.blackColor,
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Center(
                                  child: Text(
                                    "Reciters",
                                    style: TextStyle(
                                      color: AppColors.whiteColor,
                                      fontSize: 16,
                                      fontWeight: .w700,
                                    ),
                                  ),
                                ),
                              ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                 ListViewSection(),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
