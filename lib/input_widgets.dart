
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class InputWidgets extends StatelessWidget {
  const InputWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text('Autocomplete Example')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Autocomplete<String>(
          optionsBuilder: (TextEditingValue textEditingValue) {
            // قائمة المقترحات
            List<String> options = ['Apple', 'Banana', 'Cherry', 'Date', 'Fig', 'Grapes'];
            return options.where((option) =>
                option.toLowerCase().startsWith(textEditingValue.text.toLowerCase())
            );
          },
          onSelected: (String selection) {
            print('User selected: $selection');
          },
        ),
      ),
    );
  }
}
