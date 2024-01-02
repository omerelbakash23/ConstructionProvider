
import 'package:constructionprovider1/binding.dart';
import 'package:constructionprovider1/view/screen/routing/route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'core/services/services.dart';
import 'view/screen/outh/Language/changeLocalization.dart';
import 'view/screen/outh/Language/transliation.dart';


void main() async {
  
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp,DeviceOrientation.portraitDown]);
  await initailServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocalController controller = Get.put(LocalController());
    return  GetMaterialApp(
      locale: controller.language,
      translations: MyTransliations(),
      debugShowCheckedModeBanner: false,
      initialBinding: Mybinding(),
      getPages: routes
    );
  }
}

