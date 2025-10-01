

import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
/*
class TweenAnimation extends StatelessWidget {
   TweenAnimation({super.key});
  late Color beginColor=Colors.red;
   late Color endColor=Colors.green;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TweenAnimationBuilder(tween: ColorTween(begin:beginColor,end:endColor),
                duration: Duration(seconds: 3),
                builder: (context,value,child){
              return Container(
                width: 100,
                height: 100,
                color: value,
              );
                }
            )
          ],
        ),
      ),
    );
  }
}
*/

class TweenAnimation extends StatelessWidget {
  TweenAnimation({super.key});

  late double beginRadius=25;
  late double endRadius=100.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TweenAnimationBuilder(tween: Tween<double>(begin:beginRadius,end:endRadius),
                duration: Duration(seconds: 3),
                builder: (context,value,child){
                  return Container(
                    width: 100,
                    height: 100,
                    decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(value),
                      color: Colors.red,
                    ),

                  );
                }
            )
          ],
        ),
      ),
    );
  }
}