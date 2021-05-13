import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/controllers/language.dart';

class LanguageChange extends StatefulWidget {
  @override
  _LanguageChangeState createState() => _LanguageChangeState();
}

class _LanguageChangeState extends State<LanguageChange> {
  Language language = Get.put(Language());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("International"),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('hello'.tr,style: TextStyle(color: Colors.blueAccent,fontSize: 25),),
          ElevatedButton(
            child: Text("Hindi"),
            onPressed: (){
              language.changeLanguage("hi", "IN");
            }
          ),
          ElevatedButton(
              child: Text("English"),
              onPressed: (){
                language.changeLanguage("en", "US");
              }
          ),
          ElevatedButton(
              child: Text("Itlian"),
              onPressed: (){
                language.changeLanguage("it", "IT");
              }
          )
        ],
      ),
    );
  }
}
