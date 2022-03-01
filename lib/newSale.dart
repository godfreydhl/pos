import 'package:flutter/material.dart';
import 'mainDrawer.dart';
import 'currencySwitch.dart';
import 'data/data.dart';
import 'widgets/widgets.dart';

class NewSale extends StatefulWidget {
  const NewSale({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<NewSale> createState() => _NewSaleState();
}

class _NewSaleState extends State<NewSale> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: const MainDrawer(),

      body: Column(children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Order #00001'),
              Container(
                width: 200,
                child: const CurrencySwitch(),
              ),
              const Text('Date'),
            ],
          ),
        ),
        Row(
          children: [
            const productListDispaly(),
            SizedBox(
              width: 280,
              child: Column(
                children: const [Cart(), Subtotal()],
              ),
            )
          ],
        )
      ]),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
