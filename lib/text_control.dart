import 'package:flutter/material.dart';
import 'text_output.dart';

class TextControl extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TextControlState();
  }
}

class _TextControlState extends State<TextControl> {
  @override
  String _mainText = 'this is first assignment';

  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            setState(() {
              _mainText = 'here go .this changed!!!';
            });
          },
          child: Text('Tap to change sentence'),
        ),
        TextOutput(_mainText),
      ],
    );
  }
}
