import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class Language extends GetxController{
  void changeLanguage(var par1, var par2){
    var local = Locale(par1,par2);
    Get.updateLocale(local);
  }
}