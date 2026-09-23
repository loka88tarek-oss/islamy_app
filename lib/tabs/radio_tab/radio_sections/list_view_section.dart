import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:islamy_app/common/app_colors.dart';
import 'package:islamy_app/gen/assets.gen.dart';

class ListViewSection extends StatefulWidget {
  const ListViewSection({super.key});
  

  @override
  State<ListViewSection> createState() => _ListViewSectionState();
}

class _ListViewSectionState extends State<ListViewSection> {
   
List<bool> playTapClicked = List.generate(20, (_) => true); 
  @override
  Widget build(BuildContext context) {
    return   Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: 20,
                      itemBuilder: (context, index) => SizedBox(
                        width: double.infinity,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          color: AppColors.goldColor,
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              playTapClicked[index]
                                  ? Image.asset(
                                      Assets.images.mosqueEffect.path,
                                      fit: BoxFit.fill,
                                    )
                                  : Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Image.asset(
                                        Assets.images.sw.path,
                                       
                                        fit: BoxFit.cover,
                                      ),
                                  ),
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,

                                  children: [
                                    Text(
                                      "Radio Ibrahim Al-Akdar",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: .w700,
                                      ),
                                    ),
                                    SizedBox(height: 50),
                                    FittedBox(
                                      fit: BoxFit.scaleDown,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              setState(() {
                                                playTapClicked[index] =
                                                    !playTapClicked[index];
                                              });
                                            },

                                            child: playTapClicked[index]
                                                ? SvgPicture.asset(
                                                    Assets.icons.playOn,
                                                   
                                                  )
                                                : SvgPicture.asset(
                                                    Assets.icons.pause,
                                                   
                                                  ),
                                          ),

                                          SizedBox(width: 20),
                                          InkWell(
                                           child: playTapClicked[index]
                                                ? SvgPicture.asset(
                                                    Assets.icons.soundOnIcon,
                                                   
                                                  )
                                                : SvgPicture.asset(
                                                    Assets.icons.soundOff,
                                                   
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
                      ),
                    ),
                  )
              ;
  }
}