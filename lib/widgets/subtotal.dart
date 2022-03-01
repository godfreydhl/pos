import 'package:flutter/material.dart';

class Subtotal extends StatefulWidget {
  const Subtotal({Key? key}) : super(key: key);

  @override
  _SubtotalState createState() => _SubtotalState();
}

class _SubtotalState extends State<Subtotal> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: Column(
        children: [
          Row(
            children: const [
              Text('Total'),
              Text('3456.00'),
            ],
          ),
          Button(text: 'Cash', callback: () {}),
          Button(text: 'Credit', callback: () {})
        ],
      ),
    );
  }
}

class Button extends StatelessWidget {
  final String text;
  final VoidCallback callback;

  const Button({
    Key? key,
    required this.text,
    required this.callback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(left: 16, top: 24),
        child: ElevatedButton(
          onPressed: callback,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 80),
            child: Text(
              text,
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
          ),
        ));
  }
}
