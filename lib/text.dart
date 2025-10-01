import 'package:flutter/material.dart';

import 'basic_widgets.dart';

class NewText extends StatelessWidget {
  const NewText({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTextStyle(
        style: TextStyle(color: Colors.red),
        child: Column(
          children: [
            Text("habibannnnnnnnnnnnnnnnnnnnnnnnn"),
            Text("HABIBA", style: TextStyle(color: Colors.green)),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(text: "habiba \n"),
                  TextSpan(text: "habiba"),
                ],
              ),
            ),
            Text.rich(
              TextSpan(
                text: "hybhbvhbvhvc",
                style: TextStyle(color: Colors.amber),
                children: [TextSpan(text: "hybhbvhbvhvc")],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => BasicWidgets()),
                );
              },
              child: Text("gooo"),
            ),
          ],
        ),
      ),
    );
  }
}
