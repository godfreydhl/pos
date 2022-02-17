import 'package:flutter/material.dart';
import 'mainDrawer.dart';

class NewSale extends StatefulWidget {
  const NewSale({Key? key, required this.title}) : super(key: key);



  final String title;

  @override
  State<NewSale> createState() => _NewSaleState();
}

class _NewSaleState extends State<NewSale> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        
        title: Text(widget.title),
      ),
      drawer: MainDrawer(),

      body: Center(
        
        child: 
      ),
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}