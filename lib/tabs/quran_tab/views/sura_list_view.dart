import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:islamy_app/common/app_colors.dart';
import 'package:islamy_app/gen/assets.gen.dart';
import 'package:islamy_app/model/sura_model.dart';
import 'package:islamy_app/tabs/quran_tab/views/sura_view.dart';

class SuraListView extends StatelessWidget {
  const SuraListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Suras List",
            style: TextStyle(
              color: AppColors.butterYellowTextFeild,
              fontSize: 16,
              fontWeight: .w700,
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) => drawSuraTile(context,SuraModel.allSuras[index]),
              separatorBuilder: (context, index) => Divider(
                color: AppColors.whiteColor,
                endIndent: 44,
                indent: 44,
              ),
              itemCount: SuraModel.allSuras.length,
            ),
          ),
        ],
      ),
    );
  }

  Widget drawSuraTile(BuildContext context,SuraModel suraModel) {
    return ListTile(
      onTap: () {
        Navigator.of(context).pushNamed(SuraView.suraRouteName,arguments: suraModel);
      },
      minVerticalPadding: 0,
      contentPadding: EdgeInsets.all(0),
      leading: Stack(
        alignment: Alignment.center,
        children: [
          SvgPicture.asset(Assets.icons.quranStar),
          Text(
            suraModel.id,
            style: TextStyle(
              color: AppColors.whiteColor,
              fontSize: 18,
              fontWeight: .w500,
            ),
          ),
        ],
      ),

      title: Text(
        suraModel.suraNameEn,
        style: TextStyle(
          color: AppColors.whiteColor,
          fontSize: 20,
          fontWeight: .bold,
        ),
      ),
      subtitle: Text(
        "${suraModel.suraAyas} Verses",
        style: TextStyle(
          color: AppColors.whiteColor,
          fontSize: 14,
          fontWeight: .bold,
        ),
      ),
      trailing: Text(
        suraModel.suraNameAr,
        style: TextStyle(
          color: AppColors.whiteColor,
          fontSize: 20,
          fontWeight: .bold,
        ),
      ),
    );
  }
}
