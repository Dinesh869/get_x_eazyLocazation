import 'package:get/get.dart';

class Message extends Translations{
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
    'en_US':{
      'hello' : "Hello"
    },
    'hi_IN' : {
      'hello' : "नमस्कार"
    },
    'it_IT':{
      'hello' : "Ciao"
    }
  };

}