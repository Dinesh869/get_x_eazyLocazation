import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImageController extends GetxController{

  var selectedImagePath = ''.obs;
  var selectedImageSize = ''.obs;


  void getImage(ImageSource imageSource) async{
    final pickedFile = await ImagePicker().getImage(source: imageSource);
    if(pickedFile!= null){
      selectedImagePath.value = pickedFile.path;
      
    }else{
      Get.snackbar("Error", "No Image Selected",snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.red,
        colorText: Colors.white
      );
    }
  }

  @override
  void onInit(){
    super.onInit();
  }
}