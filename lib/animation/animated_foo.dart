import 'package:flutter/material.dart';





class AnimatedFoo extends StatefulWidget {
  const AnimatedFoo({super.key});

  @override
  State<AnimatedFoo> createState() => _AnimatedFooState();
}

class _AnimatedFooState extends State<AnimatedFoo> {

  bool x=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Animated Positioned Widget",),centerTitle: true,),

      body: Center(
        child: Column(
          children: [
            Expanded(
              child: AnimatedPadding(
                padding:EdgeInsets.all(x?0:20) ,
                duration: Duration(seconds: 2),
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
            ),


            ElevatedButton(
              onPressed: () {
                x=!x;
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



/*
class AnimatedFoo extends StatefulWidget {
  const AnimatedFoo({super.key});

  @override
  State<AnimatedFoo> createState() => _AnimatedFooState();
}

class _AnimatedFooState extends State<AnimatedFoo> {

  bool x=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Animated Positioned Widget",),centerTitle: true,),

      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  AnimatedPositionedDirectional(
                    duration: const Duration(seconds: 2),
                    curve: Curves.fastOutSlowIn,
                    start:x?100:0 ,
                    top:x?0:100 ,
                    width:x?100:50 ,
                    height:x?50:100,
                    child: Container(
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),


            ElevatedButton(
              onPressed: () {
             x=!x;
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

*/














/*


class AnimatedFoo extends StatefulWidget {
  const AnimatedFoo({super.key});

  @override
  State<AnimatedFoo> createState() => _AnimatedFooState();
}

class _AnimatedFooState extends State<AnimatedFoo> {
  Offset offset=Offset(0, 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Animated Slide Widget",),centerTitle: true,),

      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Expanded(
              child: AnimatedSlide(
                offset: offset,
                duration: const Duration(seconds: 2),
                child: Align(
                  alignment: Alignment.center, // أو Center لو عايزاه في النص
                  child: Container(
                    width: 100,
                    height: 50,
                    color: Colors.blue,
                  ),
                ),
              ),
            ),


            ElevatedButton(
              onPressed: () {
                offset= offset==Offset(0, 0)?Offset(1,-1):Offset(0, 0);
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

*/











/*
class AnimatedFoo extends StatefulWidget {
  const AnimatedFoo({super.key});

  @override
  State<AnimatedFoo> createState() => _AnimatedFooState();
}

class _AnimatedFooState extends State<AnimatedFoo> {
  TextStyle style = TextStyle(fontSize: 20, color: Colors.green);

  bool x=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Default Text Style"),
      ),

      body: Center(
        child: Column(
          children: [
            SizedBox(height: 30,),
            Expanded(
              child: AnimatedDefaultTextStyle(
                curve: Curves.easeOut,
                style: getTextStylr(),
                duration: Duration(seconds: 3),
                child: Text("Flutter Animation"),
              ),
            ),

            ElevatedButton(
              onPressed: () {
                if(x==true)
                  x=false;
                else
                  x=true;
                setState(() {});
              },
              child: Text("Animate"),
            ),
          ],
        ),
      ),
    );
  }

 TextStyle getTextStylr()
  {
    return x?TextStyle(fontSize: 20, color: Colors.green):TextStyle(
      fontSize: 40,
      fontWeight: FontWeight.bold,
      color: Colors.orange,
    );
  }
}*/

/*
class AnimatedFoo extends StatefulWidget {
  AnimatedFoo({super.key});

  @override
  State<AnimatedFoo> createState() => _AnimatedFooState();
}

class _AnimatedFooState extends State<AnimatedFoo> {
  late double turns = 0;
  late double opacity = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatedRotation"),
        backgroundColor: Colors.green,
      ),

      body: Center(
        child: Column(
          children: [
            SizedBox(height: 40),
            AnimatedRotation(
              alignment: Alignment.bottomLeft,          //change center of rotation
              curve: Curves.easeInCirc,
              turns: turns,                       // 0.5 => rotate by 180degree
              duration: Duration(seconds: 2),
              child: AnimatedOpacity(
                  opacity: opacity,
                  duration: Duration(seconds: 2),
                  curve: Curves.easeInOutCirc,
                  child: FlutterLogo(size: 100)),
            ),

            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    turns ++;          //positive=> clock wise
                    opacity=0;
                    setState(() {});
                  },
                  icon: Icon(Icons.add, size: 50),
                ),
                IconButton(
                  onPressed: () {
                    turns --;          //negative=> anti clockwise
                    opacity=1;
                    setState(() {});
                  },
                  icon: Icon(Icons.add, size: 50),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


*/

/*
class AnimatedFoo extends StatefulWidget {
   const AnimatedFoo({super.key});

  @override
  State<AnimatedFoo> createState() => _AnimatedFooState();
}

class _AnimatedFooState extends State<AnimatedFoo> {
  double size=100;
  AlignmentGeometry? alignment=Alignment.center;
  Color color=Colors.red;
  double opacity=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(),
      body: Center(
        child: Column(

          children: [
            SizedBox(height:20 ,),
            AnimatedContainer(duration:Duration(seconds:5) ,
              curve: Curves.elasticIn,  //حلو
              alignment: alignment,
              height: size,
              width: size,
              decoration: BoxDecoration(
                color:color,
                borderRadius: BorderRadius.circular(25)
              ),
              child: AnimatedOpacity(
                  opacity: opacity,
                  duration: Duration(seconds:5),
                  child: Text("data",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)
              ),
            ),
           Spacer(),
            //AnimatedIcon(icon: Icon(Icons.add), progress: progress),

            Spacer(),
            ElevatedButton(onPressed: (){
              size=size==100?200:100;
              opacity=opacity==1?0.5:1;
              color=color==Colors.red?Colors.teal:Colors.red;
              alignment=alignment==Alignment.center?Alignment.topLeft:Alignment.center;
              setState(() {
              });
            }, child: Text("updateSize")),
            SizedBox(height:20 ,),
          ],
        ),
      ),
    );
  }
}
*/
