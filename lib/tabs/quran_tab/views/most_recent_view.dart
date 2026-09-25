import 'package:flutter/material.dart';
import 'package:islamy_app/common/app_colors.dart';
import 'package:islamy_app/gen/assets.gen.dart';
import 'package:islamy_app/model/sura_model.dart';

class MostRecentView extends StatelessWidget {
  const MostRecentView({
    super.key,
    required this.size,
    required this.mostRecentIndicies,
  });
  final Size size;
  final List<int> mostRecentIndicies;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Most Recently",
          style: TextStyle(
            color: AppColors.butterYellowTextFeild,
            fontSize: 16,
            fontWeight: .w700,
          ),
        ),
        SizedBox(height: 20),
        SizedBox(
          height: size.height * .16,

          child: ListView.builder(
            itemCount: mostRecentIndicies.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              int suraIndex = mostRecentIndicies[index];
              SuraModel suraModel = SuraModel.allSuras[suraIndex];
              return
              Card(
                margin: EdgeInsets.all(5),
                color: AppColors.goldColor,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            suraModel.suraNameEn,
                            style: TextStyle(
                              color: AppColors.blackColor,
                              fontSize: 24,
                              fontWeight: .w700,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            suraModel.suraNameAr,
                            style: TextStyle(
                              color: AppColors.blackColor,
                              fontSize: 24,
                              fontWeight: .w700,
                            ),
                          ),
                          SizedBox(height: 1),
                          Text(
                            "${suraModel.suraAyas} verse",
                            style: TextStyle(
                              color: AppColors.blackColor,
                              fontSize: 14,
                              fontWeight: .w700,
                            ),
                          ),
                        ],
                      ),
                      Image.asset(Assets.images.cardImage.path),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
