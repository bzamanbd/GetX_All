import 'package:get/get.dart';

class Messags extends Translations {
  var showTxt = 'hello'.tr;

  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {'hello': 'hello'},
        'hi_IN': {'hello': 'नमस्ते'},
        'be_BD': {'hello': 'হ্যালো'},
      };
}
