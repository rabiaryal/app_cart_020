import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app_020/firebase_options.dart';
import 'package:shopping_app_020/route/route.dart';
import 'package:shopping_app_020/route/routename.dart';
import 'package:shopping_app_020/view/home/foruser/firstpage.dart';
import 'package:shopping_app_020/view/home/seller/updateinfo.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(


        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: RoutesName.updateinfo,
        onGenerateRoute: Routes.generateRoute,
    );
  }
}
