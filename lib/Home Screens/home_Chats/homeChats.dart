import 'package:flutter/material.dart';
import 'package:whatsapp_v2/core.dart';

class HomeChats extends StatelessWidget {
  const HomeChats({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Stack(
      children: [
        Container(
          color: Colors.white,
        ),
        Positioned(
          right: 16,
          bottom: 16,
          child: FloatingActionButton(
            onPressed: () {},
            backgroundColor: AppColors.primary,
            enableFeedback: true,
            child: const Icon(Icons.message, size: 35),
          )
        )
      ],
    );
  }
}