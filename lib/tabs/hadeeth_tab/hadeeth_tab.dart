import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy_app/common/app_colors.dart';
import 'package:islamy_app/gen/assets.gen.dart';
import 'package:islamy_app/model/hadeeth_model.dart';
import 'package:islamy_app/widgets/bg_build_widget.dart';

class HadeethTab extends StatefulWidget {
  const HadeethTab({super.key});

  @override
  State<HadeethTab> createState() => _HadeethTabState();
}

class _HadeethTabState extends State<HadeethTab> {
    List<HadeethModel>hadeethList=[];
    bool isLoading=true;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    if(hadeethList.isEmpty) loadHadeethContent();
    return Stack(
      children: [
        BgBuildWidget(imagePath: Assets.images.hadeethBg.path),
        SafeArea(
          child: Column(
            children: [
              Center(child: Image.asset(Assets.images.appBarImage.path)),
              SizedBox(height: size.height * .03),
              if(isLoading)
                CircularProgressIndicator()
                else
              Expanded(
                child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) =>
                      CarouselSlider.builder(
                        itemCount: hadeethList.length,

                        options: CarouselOptions(
                          height: constraints.maxHeight,
                          scrollDirection: Axis.horizontal,
                          autoPlay: true,
                          enlargeCenterPage: true,
                        ),
                        itemBuilder: (context, index, realIndex) => Card(
                          color: AppColors.goldColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Stack(
                              
                              fit: StackFit.expand,
                              children: [
                                Image(
                                  image: AssetImage(
                                    Assets.images.hadeethCardBg.path,
                                  ),
                                  fit: BoxFit.fill,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 20,
                                    left: 20,
                                    bottom: 60,
                                    right: 20,
                                  ),
                                  child: Column(
                                    spacing: 10,
                                    children: [
                                      Text(
                                        textAlign: .center,
                                        textDirection: .rtl,

                                        hadeethList[index].name,
                                        style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: .bold,
                                        ),
                                      ),

                                      Expanded(
                                        child: SingleChildScrollView(
                                          controller: ScrollController(),
                                          padding: EdgeInsets.all(20),
                                          child: Text(
                                       hadeethList[index].content.join('\n'),

                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: .bold,
                                            ),
                                          ),
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
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ],
    );
  }

  Future<void> loadHadeethContent() async {
   for (var i = 1; i < 50; i++) {
     String hadeeth= await rootBundle.loadString("assets/hadeeth/h$i (1).txt");
     hadeeth=hadeeth.trim();
     List<String> splitHadeeth=hadeeth.split('\n');
     hadeethList.add(HadeethModel(name:splitHadeeth[0] ,content:splitHadeeth.sublist(1) ));

   }
  setState(() {
    isLoading=false;
  });
  }
}
