import 'package:flutter/material.dart';
import 'package:whatsapp_v2/Home%20Screens/home.dart';
import 'package:whatsapp_v2/Splash%20Screen/splashScreen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Whatsapp",
      routes: {
        "/" :(context) => const SplashScreen(),
        "Home" :(context) => const Home()
      },
    );
  }
}