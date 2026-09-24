import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy_app/common/app_colors.dart';
import 'package:islamy_app/gen/assets.gen.dart';
import 'package:islamy_app/model/sura_model.dart';

class SuraView extends StatefulWidget {
  const SuraView({super.key});
  static const suraRouteName = "/suraview";

  @override
  State<SuraView> createState() => _SuraViewState();
}

class _SuraViewState extends State<SuraView> {
  List<String> ayat = [];
  @override
  Widget build(BuildContext context) {
    SuraModel suraModel =
        ModalRoute.of(context)!.settings.arguments as SuraModel;
    if (ayat.isEmpty) loadSuraContent(suraModel.id);
   
    return Scaffold(
      appBar: AppBar(title: Text(suraModel.suraNameEn)),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.images.suraViewBg.path),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            spacing: 50,
            crossAxisAlignment: .stretch,
            children: [
              Center(
                child: Text(
                  suraModel.suraNameAr,
                  style: TextStyle(
                    color: AppColors.goldColor,
                    fontWeight: .bold,
                    fontSize: 24,
                  ),
                ),
              ),
              Expanded(
                child: ListView(
                  children: [
                    RichText
                    
                    (
                      textAlign:TextAlign .justify,
                      textDirection: .rtl,
                      
                      text: 
                    TextSpan(
                      children: List.generate(ayat.length, (index)=>
                      TextSpan(text: ayat[index]+'(${index+1})',
                      style: TextStyle(
                      color: AppColors.goldColor,
                      fontWeight: .bold,
                      fontSize: 20,
                      height: 2
                    ),
                    
                      )
                      )
                    )
                    )
                  ]
                
                
                ),
              )
             
            ],
          ),
        ),
      ),
    );
  }

  Future<void> loadSuraContent(String id) async {
    String data = await rootBundle.loadString("assets/suras/$id (1).txt");
  
    ayat = data.trim().split("\n");
    setState(() {});
    
  
  }
}
