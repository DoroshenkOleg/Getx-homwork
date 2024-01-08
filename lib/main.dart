import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:getx_homwork/binding_room/home_binding.dart';

import 'page/home_screen.dart';
import 'translation/translation.dart';

void main (){
  runApp(const GetXHomwork());
}

class GetXHomwork extends StatelessWidget {
  const GetXHomwork({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
       initialBinding: HomeBinding(),

      translations: TransletRoom(),
      locale: const Locale('en'),
    );
  }
}
