import 'package:flutter/material.dart';
import 'package:pass_data_forward/material_button.dart';

class Screen2 extends StatelessWidget {
  final String? text;
  const Screen2({Key? key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              text!,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 25,
              ),
            ),
            Button(
                buttonLabel: 'Go Back',
                onPressed: () {
                  Navigator.pop(context);
                }),
          ],
        ),
      ),
    );
  }
}
