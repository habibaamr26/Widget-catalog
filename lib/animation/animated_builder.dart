



import 'package:flutter/material.dart';

class AnimatedBuilderWidget extends StatefulWidget {
  const AnimatedBuilderWidget({super.key});

  @override
  State<AnimatedBuilderWidget> createState() => _AnimatedBuilderWidgetState();
}

class _AnimatedBuilderWidgetState extends State<AnimatedBuilderWidget> with SingleTickerProviderStateMixin{

  late final AnimationController _controller;
  late final Animation<double> object;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller=AnimationController(vsync: this,duration: Duration(seconds: 2));
    object=Tween<double>(begin: 0,end:1 ).animate(_controller);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Positioned Transition by animated builder"),
        centerTitle: true,
      ),

      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  AnimatedBuilder(
                    animation: object,
                    builder: (BuildContext context, Widget? child) {
                      return PositionedDirectional(
                          top:100*_controller.value,        //0=>100
                          start:-100*_controller.value+100 ,    //100=>0
                          width:-150*_controller.value+200  ,
                          height:150*_controller.value+50 ,
                          child:child!,
                      );
                          },
                    child: Container(color: Colors.blue),
                  ),
                ],
              ),
            ),

            ElevatedButton(
              onPressed: () {
                _controller.value==0?_controller.forward():_controller.reverse();
                setState(() {});
              },
              child: Text("Animate"),
            ),
          ],
        ),
      ),
    );
  }
}
