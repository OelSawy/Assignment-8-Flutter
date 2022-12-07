import 'package:flutter/material.dart';
import 'package:whatsapp_v2/core.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    handleData(context);
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Stack(
          children: [
            Align(alignment: Alignment.center, child: Image.asset("assets/images/whatsapp logo.png", height: 80, width: 80)),
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text("from", style: TextStyle(fontSize: 16, color: Colors.white70)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/meta logo.png", height: 40, width: 40),
                      const Text("Meta", style: TextStyle(fontSize: 22, color: Colors.white))
                    ],
                  )
                ],
              ),
            )
          ],
        ),
    );
  }
}

Future<void> handleData(context) async {
  await Future.delayed(const Duration(seconds: 2));
  Navigator.of(context).pushNamedAndRemoveUntil("Home", (route) => false);
}