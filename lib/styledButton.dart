import 'package:flutter/material.dart';

class StyledButton extends StatelessWidget {

  StyledButton({
    required this.paddingHorizontal,
    required this.paddingVertical,
    required this.text,
    required this.pressResult
  });

  double paddingHorizontal;
  double paddingVertical;
  String text;
  void Function() pressResult;


  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
          onPressed:() {
            null;
          },
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 80),
            child: Text(
              'Sign Out',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
              ),
            ),
          ),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
          ),
    );
  }
}
