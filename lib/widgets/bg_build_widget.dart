import 'package:flutter/material.dart';
import 'package:islamy_app/common/app_colors.dart';

class BgBuildWidget extends StatelessWidget {
  const BgBuildWidget({super.key, required this.imagePath});
 final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
             Image.asset(imagePath,fit: BoxFit.cover,),
        DecoratedBox(decoration: 
        BoxDecoration(
          gradient: LinearGradient(colors: 
          [
            AppColors.blackColor.withValues(alpha: .7),
            AppColors.blackColor.withValues(alpha: 1)
          ],
          begin:  Alignment.topCenter,
          end: Alignment.bottomCenter,
          )
        )
        ),
      ],
    );
  }
}