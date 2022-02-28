import 'package:flutter/material.dart';

class CurrencySwitch extends StatefulWidget {
  const CurrencySwitch({Key? key}) : super(key: key);

  @override
  _CurrencySwitchState createState() => _CurrencySwitchState();
}

class _CurrencySwitchState extends State<CurrencySwitch> {
  bool _zwl = false;
  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      title: const Text('ZWL'),
      value: _zwl,
      onChanged: (value) {
        setState(() {
          _zwl = value;
        });
      },
      secondary: const Icon(Icons.attach_money),
    );
  }
}
