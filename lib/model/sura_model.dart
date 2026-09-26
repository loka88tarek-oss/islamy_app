import 'package:islamy_app/data/suras_data.dart';

class SuraModel {
  final String suraNameAr;
  final String suraNameEn;
  final String suraAyas;
  final String id;

  SuraModel({
    required this.suraNameAr,
    required this.suraNameEn,
    required this.suraAyas,
    required this.id,
  });
  static List<SuraModel>  get allSuras{
   List<SuraModel> dataList=[];
   for (var i = 0; i < SurasData.arabicSuranName.length; i++) {
     SuraModel obj=SuraModel(
      suraNameAr: SurasData.arabicSuranName[i], 
      suraNameEn:SurasData.englishSurasName[i],
       suraAyas: SurasData.ayasNumber[i],
        id: (i+1).toString());
        dataList.add(obj);
   }
    return dataList;
  }
}
