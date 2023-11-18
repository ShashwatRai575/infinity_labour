import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:infinity_labour/labour/labour_screen.dart';
import 'package:infinity_labour/login_pages/labour_registration.dart';
import 'package:infinity_labour/login_pages/login_page.dart';
import 'package:infinity_labour/login_pages/signup_page.dart';
import 'package:infinity_labour/mainPages/homepage.dart';
//import 'package:infinity_labour/mainPages/homePage1.dart';
//import 'package:infinity_labour/mainPages/homepage.dart';

void main() {
   WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,]
    
  );
  runApp(MaterialApp(
    //debugShowCheckedModeBanner: false,

    home: const HomePage(),
    routes: {
      'register': (context) => const MyRegister(),

      'login': (context) => const MyLogin(),
  
      'labourscreen':(context) => const LabourList(),

      'homepage':(context) => const HomePage(),

      'labourlogin':(context) => const LabourLogin(),
      /*
      'women':(context) => const WomenShoes(),
      'homepage':(context) => MyHomePage(),
      'kids':(context) => KidsShoes(),
      'contact':(context) =>  TeamScreen(),
      */
    },
    
  ));
}
