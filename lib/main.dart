import 'package:flutter/material.dart';
import 'package:water_project/pages/home_screen.dart';
import 'package:water_project/pages/login_screen.dart';
import 'package:water_project/pages/recover_password_screen.dart';
import 'package:water_project/pages/reset_password_screen.dart';
import 'package:water_project/pages/select_package.dart';
import 'package:water_project/pages/splash_screen.dart';
import 'package:water_project/pages/trans_details_screen.dart';


main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Water Project',
      theme: ThemeData(
        primaryColor: Color(0xFFFFC900),
        primarySwatch: Colors.orange  //Color(0xFFFFC900)
      ),
      initialRoute: '/',
      onGenerateRoute: router,
      home: SplashScreen(),
    );
  }

  Route router(RouteSettings settings){
    
    switch (settings.name) {
      case '/':
          return MaterialPageRoute(
            builder: (BuildContext context) {
              return SplashScreen();
            }
          );
        break;

      case '/app-home':
          return MaterialPageRoute(
            builder: (BuildContext context) {
              return HomeScreen();
            }
          );
        break;

      case '/login':
          return MaterialPageRoute(
            builder: (BuildContext context) {
              return LoginScreen();
            }
          );
        break;
      case '/reset-pass':
          return MaterialPageRoute(
            builder: (BuildContext context) {
              return ResetPasswordScreen();
            }
          );
        break;
      case '/recover-pass':
          return MaterialPageRoute(
            builder: (BuildContext context) {
              return RecoverPasswordScreen();
            }
          );
        break;

      case '/select-pack':
          return MaterialPageRoute(
            builder: (BuildContext context) {
              return SelectPackage();
            }
          );
        break;
        
      default:
        if(settings.name.startsWith('/trans-details/')){
          var id =  int.parse(settings.name.replaceFirst('/trans-details/', ''));

          return MaterialPageRoute(
            builder: (BuildContext context) {
              return TransDetailsScreen(id);
            }
          );
        }else if(settings.name.startsWith('/buy-pack/')){
          var id =  int.parse(settings.name.replaceFirst('/trans-details/', ''));

          return MaterialPageRoute(
            builder: (BuildContext context) {
              return TransDetailsScreen(id);
            }
          );
        }else{
          return MaterialPageRoute(
            builder: (BuildContext context) {
              return SplashScreen();
            }
          );
        }
        
    }
    
  }
}

//login screen

