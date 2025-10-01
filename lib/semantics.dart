

import 'package:flutter/material.dart';

class SemanticsWidget extends StatelessWidget {
  const SemanticsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Icon(Icons.add),title: Text("Semantics"),),
      body: Center(
        child:
        Column(
          children: [
            DefaultTextStyle(style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.blue),
                child: Wrap(
                  children: [
                    Semantics(
                      label:"اول عنصر",
                        child: Text("first")),
                    ExcludeSemantics(child: Text("second")),
                    BlockSemantics(
                      child: MergeSemantics(
                        child: Row(
                          children: [
                            Text("second"),
                            Text("second"),
                            Text("second"),
                          ],
                        ),
                      ),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
