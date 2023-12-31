import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/shimmer.dart/Asset_Details.dart';

// import 'package:flutter_application_1/firebase_opt.dart';\

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
      supportedLocales: const [
        Locale('en', 'US'),
        Locale('en'),
      ],
      path:
          'assets/translations', // <-- change the path of the translation files
      fallbackLocale: const Locale('en', 'US'),
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: const AssetDetails(
          // title: '',
          ),
    );
  }
}









// void main() {
  
  
  
  
//   for (int  i = 1; i < 6; i++) {
    
    
      
      
    
    
//       print("****");
      
    
    
    




//   }
        
// }
  
//    var k =["*","**","***","****","*****"];
//   for(int n=0; n<k.length;n++){
//     print(k[n]);
//   }

// }