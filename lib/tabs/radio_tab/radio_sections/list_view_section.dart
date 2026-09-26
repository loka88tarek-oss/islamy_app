import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:islamy_app/common/app_colors.dart';
import 'package:islamy_app/gen/assets.gen.dart';

class ListViewSection extends StatefulWidget {
  const ListViewSection({super.key, required this.selectedTab});
  final int selectedTab;

  @override
  State<ListViewSection> createState() => _ListViewSectionState();
}

class _ListViewSectionState extends State<ListViewSection> {
  List<bool> playTapClicked = List.generate(4, (_) => true);
  List<String> reciters = [
    "Ibrahim Al-Akdar",
    "Akram Alalaqmi",
    "Majed Al-Enezi",
    "Malik shaibat Alhamed",
  ];
  List<String> radio = [
    "Radio Ibrahim Al-Akdar",
    "Radio Akram Alalaqmi",
    "Radio Majed Al-Enezi",
    "Radio Malik shaibat Alhamed",
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: reciters.length,
        itemBuilder: (context, index) => SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              margin: EdgeInsets.all(.5),

              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              color: AppColors.goldColor,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  playTapClicked[index]
                      ? Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Image.asset(
                            Assets.images.mosqueEffect.path,
                            fit: BoxFit.fill,
                          ),
                      )
                      : Positioned.fill(
                        bottom: -65,
                       
                        left: 0,
                        right: 0,
                        child: Image.asset(Assets.images.sw.path,fit: BoxFit.cover)),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        Text(
                          widget.selectedTab == 0
                              ?
                              
                               radio[index]
                              : reciters[index],

                          style: TextStyle(fontSize: 20, fontWeight: .w700),
                        ),
                        SizedBox(height: 50),
                        FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    playTapClicked[index] =
                                        !playTapClicked[index];
                                  });
                                },

                                child: playTapClicked[index]
                                    ? SvgPicture.asset(Assets.icons.playOn)
                                    : SvgPicture.asset(Assets.icons.pause),
                              ),

                              SizedBox(width: 20),
                              InkWell(
                                child: playTapClicked[index]
                                    ? SvgPicture.asset(Assets.icons.soundOnIcon)
                                    : SvgPicture.asset(Assets.icons.soundOff),
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
          ),
        ),
      ),
    );
  }
}
