import 'package:flutter/material.dart';

class FooTransition extends StatefulWidget {
  const FooTransition({super.key});

  @override
  State<FooTransition> createState() => _FooTransitionState();
}

class _FooTransitionState extends State<FooTransition>
    with SingleTickerProviderStateMixin {
  late final AnimationController _objectController;
  late final Animation<double> positioned;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _objectController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 5),
    );
    
    positioned=Tween<double>(begin:0 ,end:1 ).animate(_objectController);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Positioned Transition by animated builder"),
        centerTitle: true,
      ),

      body: Center(
        child: Column(
          children: [
            Expanded(
              child: AnimatedBuilder(
                  animation: positioned, 
                  builder: (context,child)
              {
                return  Positioned(child: Container(color: Colors.blue));
              }),
            ),

            ElevatedButton(
              onPressed: () {
               
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
class FooTransition extends StatefulWidget {
  const FooTransition({super.key});

  @override
  State<FooTransition> createState() => _FooTransitionState();
}

class _FooTransitionState extends State<FooTransition>
    with SingleTickerProviderStateMixin {
  late Animation<Offset> position;
  late AnimationController objectController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    objectController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );
    position = Tween<Offset>(
      begin: Offset(0, 0),
      end: Offset(0.5, -0.5),
    ).animate(objectController);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Animated Slide Widget"), centerTitle: true),

      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20),
            Expanded(
              child: SlideTransition(
                position: position,
                child: Align(
                  alignment: Alignment.center,
                    child: Container(width: 100, height: 50, color: Colors.blue)),
              ),
            ),

            ElevatedButton(
              onPressed: () {
                objectController.value==0?objectController.forward():objectController.reverse();
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
class FooTransition extends StatefulWidget {
  const FooTransition({super.key});

  @override
  State<FooTransition> createState() => _FooTransitionState();
}

class _FooTransitionState extends State<FooTransition>
    with SingleTickerProviderStateMixin {
  late Animation<TextStyle> style;
  late AnimationController animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(

      vsync: this,
      duration: Duration(seconds: 3),
    );
    style = TextStyleTween(
      begin: TextStyle(fontSize: 20, color: Colors.green),
      end: TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.bold,
        color: Colors.orange,
      ),
    ).animate(CurvedAnimation(parent: animationController, curve: Curves.easeInOut));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Default Text Style Transition"),
      ),

      body: Center(
        child: Column(
          children: [
            SizedBox(height: 30),
            Expanded(
              child: DefaultTextStyleTransition(
                style: style,
                child: Text("Flutter Animation"),
              ),
            ),

            ElevatedButton(
              onPressed: () {
                animationController.value == 0
                    ? animationController.forward()
                    : animationController.reverse();
                setState(() {});
              },
              child: Text("Animate"),
            ),
          ],
        ),
      ),
    );
  }
}*/

/*
class FooTransition extends StatefulWidget {
  const FooTransition({super.key});

  @override
  State<FooTransition> createState() => _FooTransitionState();
}

class _FooTransitionState extends State<FooTransition>
    with TickerProviderStateMixin {
  late Animation<double> turns;
  late AnimationController animationController;
 late Animation<double> opacity;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );
    turns = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(animationController); // 0 to 1 = 0 to 365

    opacity = Tween<double>(
      begin: 1,
      end: 0,
    ).animate(animationController); //
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Rotation transition"),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 40),
            Expanded(
              child: RotationTransition(
                alignment: Alignment.bottomCenter,
                turns: turns,
                child: FadeTransition(
                    opacity: opacity,
                    child: FlutterLogo(size: 100)),
              ),
            ),

            IconButton(
              onPressed: () {
                animationController.value == 0
                    ? animationController.forward()
                    : animationController.reverse();


                setState(() {});
              },
              icon: Icon(Icons.add, size: 50),
            ),
          ],
        ),
      ),
    );
  }
}*/

/*
class FooTransition extends StatefulWidget {
  const FooTransition({super.key});

  @override
  State<FooTransition> createState() => _FooTransitionState();
}

class _FooTransitionState extends State<FooTransition>
    with SingleTickerProviderStateMixin {
  late Animation<AlignmentGeometry> animation;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
      reverseDuration: const Duration(seconds: 2),
    );

    animation = AlignmentTween(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ).animate(controller);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green),
      body: Column(
        children: [
          const SizedBox(height: 20),
          // Wrap AlignTransition in Expanded to give it proper constraints

          Expanded(
            child: AlignTransition(
              alignment: animation,
              child: Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.deepOrange,
                ),
              ),
            ),
          ),
          // Buttons at the bottom
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    controller.reset();
                    controller.forward();
                  },
                  child: const Text("forward"),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}*/
