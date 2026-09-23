
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:islamy_app/common/app_colors.dart';

class AzkarWidget extends StatelessWidget {
  const AzkarWidget({
    super.key,
    required this.size, required this.azkarName, required this.azkarImage,
  });

  final Size size;
  final String azkarName;
  final String azkarImage;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        log("Done");
      },
      child: Container(
        width: size.width * .43,
        height: size.height * .25,
        decoration: BoxDecoration(
          color: AppColors.blackColor,
          borderRadius: BorderRadius.circular(20),
          border: BoxBorder.all(color: AppColors.goldColor),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Image.asset(azkarImage)),
            SizedBox(height: 20,),
            Text(azkarName,style: TextStyle(
              color: AppColors.whiteColor,
              fontSize: 20,
              fontWeight: .w700
            ),)
          ],
        ),
      ),
    );
  }
}
