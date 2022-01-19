import 'package:flutter/material.dart';
import 'package:pass_data_forward/material_button.dart';
import 'package:pass_data_forward/screens/screen2.dart';

class Screen1 extends StatelessWidget {
  Screen1({Key? key}) : super(key: key);

  final textToBeSent = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: TextField(
            controller: textToBeSent,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter data to be sent',
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Button(
          buttonLabel: 'Send',
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Screen2(
                  text: textToBeSent.text.isEmpty
                      ? 'SEND ME DATA !😡'
                      : textToBeSent.text.toString(),
                ),
              ),
            );
          },
        )
      ]),
    );
  }
}
