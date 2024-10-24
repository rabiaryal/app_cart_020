
import 'package:flutter/material.dart';

import 'package:shopping_app_020/route/routename.dart';
import 'package:shopping_app_020/view/home/foruser/firstpage.dart';
import 'package:shopping_app_020/view/home/seller/updateinfo.dart';

class Routes {

  static Route<dynamic>  generateRoute(RouteSettings settings){

    switch(settings.name){
      case RoutesName.firstpage:
        return MaterialPageRoute(builder: (BuildContext context) => const FirstPage());

      case RoutesName.updateinfo:
        return MaterialPageRoute(builder: (BuildContext context) =>  UpdateInfo());

      // case RoutesName.login:
      //   return MaterialPageRoute(builder: (BuildContext context) => const LoginView());

      default:
        return MaterialPageRoute(builder: (_){
          return const Scaffold(
            body: Center(
              child: Text('No route defined'),
            ),
          );
        });

    }
  }
}
